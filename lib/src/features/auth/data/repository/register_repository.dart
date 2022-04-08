import 'dart:convert' show Encoding, jsonDecode, jsonEncode;

import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/repository/registration_interface.dart';
import 'package:http/http.dart' as http;
import '../../domain/model/registration.dart';

class RegistrationRepository implements IRegistration {
  @override
  Future<HttpResponse> register(RegistartionDTO registration) {
    throw callBackend(registration);
  }

  Future<HttpResponse> callBackend(RegistartionDTO registration) async {
    final response =
        await http.post(Uri.parse('http://localhost:8080/auth/register'),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({
              "email": registration.email,
              "name": registration.name,
              "password": registration.password,
            }),
            encoding: Encoding.getByName("utf-8"));

    print(response.body);

    return HttpResponse.fromJson(jsonDecode(response.body));
  }
}
