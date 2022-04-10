import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/auth/presentation/view/page/get_confirmation_token_page.dart';

import 'data/repository/login_repository.dart';
import 'data/repository/token_confirmation_repository.dart';
import 'domain/repository/login_interface.dart';
import 'domain/repository/token_confirmation_interface.dart';
import 'domain/usecase/login_usecase.dart';
import 'domain/usecase/token_usecase.dart';
import 'presentation/view/page/login_page.dart';
import 'presentation/viewmodel/get_confirmation_token_viewmodel.dart';
import 'presentation/viewmodel/login_viewmodel.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => LoginViewModel()),
        Bind.factory((i) => LoginUseCase()),
        Bind.factory<ILogin>((i) => LoginRepository()),
        Bind.factory((i) => ConfirmationTokenViewModel()),
        Bind.factory((i) => GetConfirmationTokenUseCase()),
        Bind.factory<IConfirmationToken>((i) => ConfirmationTokenRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const LoginPage(), children: []),
        ChildRoute('/getForgotPassword',
            child: (_, __) => GetConfirmationTokenPage(), children: []),
      ];
}
