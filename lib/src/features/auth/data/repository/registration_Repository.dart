import 'package:dio/dio.dart';
import 'package:obd_app/src/features/auth/domain/model/registration.dart';
import 'package:obd_app/src/features/auth/domain/repository/registration_interface.dart';

class RegistrationRepository implements IRegistration {
  @override
  Future<int?> register(RegistrationDTO regsitration) {
    return callBackend(regsitration);
  }

  Future<int?> callBackend(RegistrationDTO registration) async {
    Dio dio = new Dio();
    dio.options.headers['content-Type'] = 'application/json';
    try {
      final response = await dio.post(
        'http://10.0.2.2:8080/auth/register',
        data: {
          "password": registration.password,
          "email": registration.email,
          "name": registration.name,
        },
      );
      return response.statusCode;
    } on DioError catch (e) {
      return e.response?.statusCode;
    }
  }
}
