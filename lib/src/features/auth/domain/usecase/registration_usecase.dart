import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/registration.dart';
import 'package:obd_app/src/features/auth/domain/repository/registration_interface.dart';

class RegistrationUseCase {
  final repository = Modular.get<IRegistration>();

  Future<HttpResponse> register(String email, String password, String name,
      String passwordConfirm) async {
    return repository
        .register(RegistartionDTO(email, password, name, passwordConfirm));
  }
}
