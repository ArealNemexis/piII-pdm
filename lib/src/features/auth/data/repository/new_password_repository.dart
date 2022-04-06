import 'dart:convert' show Encoding, jsonDecode, jsonEncode;

import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/user.dart';
import 'package:obd_app/src/features/auth/domain/model/new_password.dart';
import 'package:obd_app/src/features/auth/domain/repository/new_password_interface.dart';
import 'package:http/http.dart' as http;

class NewPasswordRepository implements INewPassword {
  @override
  Future<HttpResponse> newPassword(NewPasswordDTO newPassword) {
    return callBackend(newPassword);
  }

  Future<HttpResponse> callBackend(NewPasswordDTO newPassword) async {
    final response =
        await http.post(Uri.parse('http://10.0.2.2:8080/auth/recover-password'),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({
              "password": newPassword.password,
              "confirmationToken": "1a2e76c8-4e96-454a-b4ee-39576b66c4d5",
            }),
            encoding: Encoding.getByName("utf-8"));

    print(response.body);

    return HttpResponse.fromJson(jsonDecode(response.body));
  }
}
