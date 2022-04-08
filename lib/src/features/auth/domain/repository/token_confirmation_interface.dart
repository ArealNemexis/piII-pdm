import 'dart:io';

import 'package:obd_app/src/features/auth/data/dto/recover_token_dto.dart';
import 'package:obd_app/src/features/auth/domain/model/confirmation_token.dart';


abstract class IConfirmationToken {

  Future<RecoverTokenDto> getConfirmationToken(ConfirmationToken newConfirmationToken);
}