import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/usecase/login_usecase.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  final _usecase = Modular.get<LoginUseCase>();

  @observable
  String email = '';

  @observable
  String password = '';

  void login() async {
    //TODO: Validate email
    //TODO: Validate password

    try {
      await _usecase.login(email, password);
    } on UnimplementedError {
      print('Put the error message in an observable instance field.');
    }
  }
}
