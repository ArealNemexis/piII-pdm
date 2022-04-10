import 'package:obd_app/src/features/auth/domain/model/confirmation_token.dart';

abstract class IConfirmationToken {
  Future<int?> getConfirmationToken(ConfirmationToken newConfirmationToken);
}
