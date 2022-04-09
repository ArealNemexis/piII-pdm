import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import '../../domain/model/confirmation_token.dart';

import '../../domain/repository/token_confirmation_interface.dart';

part 'get_confirm_token_viewmodel.g.dart';

class ConfirmationTokenViewModel = _ConfirmationTokenViewModelBase
    with _$ConfirmationTokenViewModel;

abstract class _ConfirmationTokenViewModelBase with Store{

  final _usecase = Modular.get<IConfirmationToken>();

  @observable
  String email = '';

 /* void getConfirmationToken(){
    _usecase.getConfirmationToken(ConfirmationToken(email));
  }*/
}