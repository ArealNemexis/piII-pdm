import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/userRegistration.dart';

import '../model/user.dart';

abstract class IRegistration {
  Future<HttpResponse> register(UserRegistration user);
}
