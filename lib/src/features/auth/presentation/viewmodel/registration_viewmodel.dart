import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/usecase/registration_usecase.dart';

part 'registration_viewmodel.g.dart';

class RegistrationViewModel = _RegistrationViewmodelBase
    with _$RegistrationViewModel;

abstract class _RegistrationViewmodelBase with Store {
  final _usecase = Modular.get<RegistrationUseCase>();
  final error = RegistrationError();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String name = '';

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

  Future<int?> register() async {
    print("TO AQUI AMIGAO");
    validateForm();
    if (!error.hasErrors) {
      int? response =
          await _usecase.register(email, password, name, passwordConfirm);

      if (response == 200) {
        Modular.to.navigate("/login");
      }
      return response;
    } else {
      print('Erro no formulario');
    }
    return null;
  }
}

class RegistrationError = _RegistrationErrorBase with _$RegistrationError;

abstract class _RegistrationErrorBase with Store {
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
