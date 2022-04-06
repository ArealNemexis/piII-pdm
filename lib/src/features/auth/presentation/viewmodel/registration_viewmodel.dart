import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/userRegistration.dart';
import '../../domain/repository/registration_interface.dart';

part 'registration_viewmodel.g.dart';

class RegistrationViewModel = _RegistrationViewmodelBase
    with _$RegistrationViewModel;

abstract class _RegistrationViewmodelBase with Store {
  final _usecase = Modular.get<IRegistration>();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String confirmPassword = '';

  @observable
  String name = '';

  void register() {
    _usecase.register(UserRegistration(
      email,
      password,
      name,
      confirmPassword,
    ));
  }
}
