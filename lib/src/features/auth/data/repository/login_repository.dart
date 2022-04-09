
import 'dart:convert';
import 'dart:convert' show jsonDecode;

import 'package:dio/dio.dart';
import 'package:obd_app/src/features/auth/data/dto/login_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/model/user.dart';
import '../../domain/repository/login_interface.dart';

class LoginRepository implements ILogin {
  @override
  Future<int?> login(User user) {
    return callBackend(user);
  }

  Future<int?> callBackend(User user) async {
    final prefs = await SharedPreferences.getInstance();

    Dio dio = new Dio();
    dio.options.headers['content-Type'] = 'application/json';

    try {
      final response = await dio.post('http://10.0.2.2:8080/auth/login',
          data: {"email": user.email, "password": user.password});

      LoginResponse responseData = LoginResponse.fromJson(response.data);
      await prefs.setString(
          "authToken", "${responseData.prefix} ${responseData.jwt}");
      return response.statusCode;
    } on DioError catch (e) {
      return e.response?.statusCode;
    }
  }
}
