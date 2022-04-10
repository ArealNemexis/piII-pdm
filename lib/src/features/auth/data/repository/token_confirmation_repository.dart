import 'dart:convert' show Encoding, jsonDecode, jsonEncode;

import 'package:obd_app/src/features/auth/data/dto/recover_token_dto.dart';
import 'package:obd_app/src/features/auth/domain/model/confirmation_token.dart';
import 'package:obd_app/src/features/auth/domain/repository/token_confirmation_interface.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfirmationTokenRepository implements IConfirmationToken {
  @override
  Future<int?> getConfirmationToken(ConfirmationToken email) {
    return callBackEnd(email);
  }

  Future<int?> callBackEnd(ConfirmationToken email) async {
    Dio dio = new Dio();
    final prefs = await SharedPreferences.getInstance();

    dio.options.headers['content-Type'] = 'aplication/json';

    String path = "http://10.0.2.2:8080/auth/forgot-password";
    try {
      final response = await Dio().post(path, data: {
        "email": email.email,
      });
      RecoverTokenDto responseDataFromApi =
          RecoverTokenDto.fromJson(response.data);

      prefs.setString("token", responseDataFromApi.token);

      return response.statusCode;
    } on DioError catch (e) {
      return e.response?.statusCode;
    }
  }
}
