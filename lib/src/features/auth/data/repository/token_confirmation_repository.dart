import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/data/dto/recover_token_dto.dart';
import 'package:obd_app/src/features/auth/domain/repository/token_confirmation_interface.dart';

import '../../domain/model/confirmation_token.dart';

class ConfirmationTokenRepository implements IConfirmationToken {
  @override
  Future<RecoverTokenDto> getConfirmationToken(ConfirmationToken token) {
    throw UnimplementedError();
  }
}