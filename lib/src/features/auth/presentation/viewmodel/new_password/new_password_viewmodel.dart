import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/usecase/new_password_usecase.dart';

part 'new_password_viewmodel.g.dart';

class NewPasswordViewModel = _NewPasswordViewModelBase
    with _$NewPasswordViewModel;

abstract class _NewPasswordViewModelBase with Store {
  final _usecase = Modular.get<NewPasswordUseCase>();

  String confirmationToken = '14a5b7a9-755d-4859-93bb-ed2d8a6195d0';

  @observable
  String password = '';

  @observable
  String passwordConfirm = '';

  Future<int> newPassword() async {
    if (password == passwordConfirm) {
      HttpResponse response =
          await _usecase.newPassword(password, confirmationToken);
      if (response.status == 200) {
        Modular.to.navigate('/');
        return 200;
      } else {
        return response.status;
      }
    } else {
      return 0;
    }
  }
}
