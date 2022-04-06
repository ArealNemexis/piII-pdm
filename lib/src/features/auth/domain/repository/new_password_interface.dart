import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/features/auth/domain/model/new_password.dart';

import '../model/user.dart';
import 'package:http/http.dart' as http;

abstract class INewPassword {
  Future<HttpResponse> newPassword(NewPasswordDTO newPassword);
}
