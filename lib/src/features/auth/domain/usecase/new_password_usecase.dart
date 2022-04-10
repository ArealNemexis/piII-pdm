import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/new_password.dart';
import 'package:obd_app/src/features/auth/domain/model/user.dart';
import 'package:obd_app/src/features/auth/domain/repository/new_password_interface.dart';
import 'package:obd_app/src/features/auth/presentation/view/page/new_password_page.dart';
import 'package:localization/localization.dart';

class NewPasswordUseCase {
  final repository = Modular.get<INewPassword>();

  Future<HttpResponse> newPassword(String password, String confirmationToken) {
    return repository.newPassword(NewPasswordDTO(password, confirmationToken));
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
