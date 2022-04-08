import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/usecase/new_password_usecase.dart';

part 'new_password_viewmodel.g.dart';

class NewPasswordViewModel = _NewPasswordViewModelBase
    with _$NewPasswordViewModel;

abstract class _NewPasswordViewModelBase with Store {
  final _usecase = Modular.get<NewPasswordUseCase>();
  final error = NewPasswordError();

  String confirmationToken = '14a5b7a9-755d-4859-93bb-ed2d8a6195d0';

  @observable
  String password = '';

  @observable
  bool sucess = false;

  @observable
  String passwordConfirm = '';

  @action
  void validateEqualPassword() {
    error.password =
        _usecase.validateEqualsPasswords(password, passwordConfirm);
  }

  @action
  String? validateEmptyPassword(String passwordToValidate) {
    return _usecase.validateEmptyPassword(passwordToValidate);
  }

  @action
  void validateForm() {
    error.clear();
    error.password = validateEmptyPassword(password);
    error.passwordConfirm = validateEmptyPassword(passwordConfirm);

    if (!error.hasErrors) {
      validateEqualPassword();
    }
  }

  Future<HttpResponse?> newPassword() async {
    validateForm();
    if (!error.hasErrors) {
      HttpResponse response =
          await _usecase.newPassword(password, confirmationToken);

      if (response.status == 200) {
        Modular.to.navigate("/");
      }

      return response;
    }

    return null;
  }
}

class NewPasswordError = _NewPasswordErrorBase with _$NewPasswordError;

abstract class _NewPasswordErrorBase with Store {
  @observable
  String? password;

  @observable
  String? passwordConfirm;

  @computed
  bool get hasErrors => password != null || password != null;

  void clear() {
    password = null;
    passwordConfirm = null;
  }
}
