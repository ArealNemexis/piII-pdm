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
    print("cheguei na repos");
    Dio dio = new Dio();
    final prefs = await SharedPreferences.getInstance();

    dio.options.headers['content-Type'] = 'application/json';
    try {
      print("cheguei na try");

      final response = await dio.post(
          'http://10.0.2.2:8080/auth1/forgot-password',
          data: {"email": email.email});
      print("passei http");
      RecoverTokenDto responseDataFromApi =
          RecoverTokenDto.fromJson(response.data);

      prefs.setString("token", responseDataFromApi.token);
      print(responseDataFromApi.token);
      return response.statusCode;
    } on DioError catch (e) {
      print(e.error.toString());
      return e.response?.statusCode;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
