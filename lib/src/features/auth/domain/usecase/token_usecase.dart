mport 'package:flutter_modular/flutter_modular.dart';

import '../model/confirmationToken.dart';
import '../repository/login_interface.dart';

class LoginUseCase {
  final repository = Modular.get<ILogin>();

  Future<User> login(String email, String password) {
    return repository.
  }
}
