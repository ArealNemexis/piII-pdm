import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/registration.dart';
import 'package:obd_app/src/features/auth/domain/usecase/registration_usecase.dart';

part 'registration_viewmodel.g.dart';

class RegistrationViewModel = _RegistrationViewmodelBase
    with _$RegistrationViewModel;

abstract class _RegistrationViewmodelBase with Store {
  final _usecase = Modular.get<RegistrationUseCase>();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String name = '';

  @observable
  String passwordConfirm = '';

  Future<int> register() async {
    HttpResponse response =
        await _usecase.register(email, password, name, passwordConfirm);
    if (response.status == 200) {
      Modular.to.navigate("/login");
      return 200;
    } else {
      return response.status;
    }
  }
}
