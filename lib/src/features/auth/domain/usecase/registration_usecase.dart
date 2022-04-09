import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/registration.dart';
import 'package:obd_app/src/features/auth/domain/repository/registration_interface.dart';

class RegistrationUseCase {
  final repository = Modular.get<IRegistration>();

  Future<int?> register(String email, String password, String name,
      String passwordConfirm) async {
    return repository
        .register(RegistrationDTO(email, password, name, passwordConfirm));
  }

  String? validateEmptyPassword(String password) {
    if (password.isEmpty) {
      return "password_cant_empty".i18n();
    }

    return null;
  }

  String? validateEqualsPasswords(String password, String passwordConfirm) {
    if (password != passwordConfirm) {
      return "password_needs_equal".i18n();
    }
    return null;
  }
}
