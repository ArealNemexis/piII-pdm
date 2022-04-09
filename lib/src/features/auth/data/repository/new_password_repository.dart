import 'dart:convert' show Encoding, jsonDecode, jsonEncode;

import 'package:dio/dio.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/new_password.dart';
import 'package:obd_app/src/features/auth/domain/repository/new_password_interface.dart';

class NewPasswordRepository implements INewPassword {
  @override
  Future<HttpResponse> newPassword(NewPasswordDTO newPassword) {
    return callBackend(newPassword);
  }

  Future<HttpResponse> callBackend(NewPasswordDTO newPassword) async {
    Dio dio = new Dio();
    dio.options.headers['content-Type'] = 'application/json';
    try {
      final response =
          await dio.post('http://10.0.2.2:8080/auth/recover-password', data: {
        "password": newPassword.password,
        "confirmationToken": "0dfdabac-dddf-4034-b364-a43cf54e4581",
      });
      print(response.data.toString());
      return HttpResponse.fromJson(jsonDecode(response.data.toString()));
    } on DioError catch (e) {
      print(e.response.toString());

      return HttpResponse.fromJson(jsonDecode(e.response.toString()));
    }
  }
}