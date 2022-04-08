import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/auth/data/repository/new_password_repository.dart';
import 'package:obd_app/src/features/auth/data/repository/register_repository.dart';
import 'package:obd_app/src/features/auth/domain/repository/new_password_interface.dart';
import 'package:obd_app/src/features/auth/domain/repository/registration_interface.dart';
import 'package:obd_app/src/features/auth/domain/usecase/new_password_usecase.dart';
import 'package:obd_app/src/features/auth/domain/usecase/registration_usecase.dart';
import 'package:obd_app/src/features/auth/presentation/view/page/new_password_page.dart';
import 'package:obd_app/src/features/auth/presentation/view/page/registration_page.dart';
import 'package:obd_app/src/features/auth/presentation/viewmodel/new_password/new_password_viewmodel.dart';
import 'package:obd_app/src/features/auth/presentation/viewmodel/registration_viewmodel.dart';

import 'data/repository/login_repository.dart';
import 'domain/repository/login_interface.dart';
import 'domain/usecase/login_usecase.dart';
import 'presentation/view/page/login_page.dart';
import 'presentation/viewmodel/login_viewmodel.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => LoginViewModel()),
        Bind.factory((i) => LoginUseCase()),
        Bind.factory<ILogin>((i) => LoginRepository()),
        Bind.factory((i) => NewPasswordViewModel()),
        Bind.factory((i) => NewPasswordUseCase()),
        Bind.factory<INewPassword>((i) => NewPasswordRepository()),
        Bind.factory((i) => RegistrationViewModel()),
        Bind.factory((i) => RegistrationUseCase()),
        Bind.factory<IRegistration>((i) => RegistrationRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => RegistrationPage(), children: []),
        ChildRoute('/login', child: (_, __) => LoginPage(), children: []),
        ChildRoute('/new-password',
            child: (_, __) => NewPasswordPage(), children: [])
      ];
}
