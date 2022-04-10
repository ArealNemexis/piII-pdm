import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:obd_app/src/features/auth/domain/usecase/token_usecase.dart';

import '../../domain/model/confirmation_token.dart';

part 'get_confirmation_token_viewmodel.g.dart';

class ConfirmationTokenViewModel = _ConfirmationTokenViewModelBase
    with _$ConfirmationTokenViewModel;

abstract class _ConfirmationTokenViewModelBase with Store {
  final _usecase = Modular.get<GetConfirmationTokenUseCase>();
  final error = GetConfirmationTokenError();
  @observable
  String email = '';

  @action
  void validate() {
    error.email = _usecase.verifyEmailEmpty(email);
  }

  void getConfirmationToken() async {
    error.clear();

    validate();
    print(email);

    if (!error.hasErrors) {
      int? responseStatus =
          await _usecase.getConfirmationToken(ConfirmationToken(email));
      if (responseStatus == 200) {
        Modular.to.navigate("/new-password");
      }
    } else {
      print("error");
    }
  }
}

class GetConfirmationTokenError = _GetConfirmationTokenError
    with _$GetConfirmationTokenError;

abstract class _GetConfirmationTokenError with Store {
  @observable
  String? email;

  @computed
  bool get hasErrors => email != null;

  void clear() {
    email = null;
  }
}
