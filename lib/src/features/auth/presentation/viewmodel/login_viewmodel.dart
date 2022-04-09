import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/usecase/login_usecase.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  final _usecase = Modular.get<LoginUseCase>();
  final error = LoginError();
  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void validateNotEmptyLogin() {
    error.clear();
    error.email = _usecase.validateNotEmpty(email);
    error.password = _usecase.validateNotEmpty(password);
  }

  void login() async {
    validateNotEmptyLogin();
    if (!error.hasErrors) {
      try {
        int? val = await _usecase.login(email, password);
        print(val);
        if (val == 200) {
          Modular.to.navigate('/register');
        }
      } catch (e) {
        error.email = "erro ${e.toString()}";
      }
    } else {
      print("errr");
    }
  }
}

class LoginError = _LoginErrorBase with _$LoginError;

abstract class _LoginErrorBase with Store {
  @observable
  String? email;

  @observable
  String? password;

  @computed
  bool get hasErrors => email != null || password != null;

  void clear() {
    email = null;
    password = null;
  }
}
