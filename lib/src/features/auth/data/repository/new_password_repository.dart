import 'dart:convert' show Encoding, jsonDecode, jsonEncode;

import 'package:dio/dio.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/new_password.dart';
import 'package:obd_app/src/features/auth/domain/repository/new_password_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewPasswordRepository implements INewPassword {
  @override
  Future<HttpResponse> newPassword(NewPasswordDTO newPassword) {
    return callBackend(newPassword);
  }

  Future<HttpResponse> callBackend(NewPasswordDTO newPassword) async {
    final prefs = await SharedPreferences.getInstance();
    Dio dio = new Dio();
    dio.options.headers['content-Type'] = 'application/json';
    try {
      final String? token = prefs.getString('token');
      final response =
          await dio.post('http://10.0.2.2:8080/auth/recover-password', data: {
        "password": newPassword.password,
        "confirmationToken": token,
      });
      print(response.data.toString());
      return HttpResponse.fromJson(response.data);
    } on DioError catch (e) {
      print(e.response.toString());

      return HttpResponse.fromJson(jsonDecode(e.response.toString()));
    }
  }
}
