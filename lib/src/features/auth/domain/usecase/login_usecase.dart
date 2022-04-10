import 'package:flutter_modular/flutter_modular.dart';

import '../model/user.dart';
import '../repository/login_interface.dart';

class LoginUseCase {
  final repository = Modular.get<ILogin>();

  Future<int?> login(String email, String password) {
    return repository.login(User(email, password));
  }

  String? validateNotEmpty(String? value) {
    if (value == null || value == '') {
      return "Field required";
    }

    return null;
  }
}
