import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/auth/data/dto/recover_token_dto.dart';

import '../model/confirmation_token.dart';
import '../repository/token_confirmation_interface.dart';

class GetConfirmationTokenUseCase {
  final repository = Modular.get<IConfirmationToken>();

  Future<RecoverTokenDto> getConfirmationToken(String email) {
    return repository.getConfirmationToken(ConfirmationToken(email));
  }
}
