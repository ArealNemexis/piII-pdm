import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/repository/registration_interface.dart';

import '../../domain/model/userRegistration.dart';

class RegisterRepository implements IRegistration {
  @override
  Future<HttpResponse> register(UserRegistration user) {
    throw UnimplementedError();
  }
}
