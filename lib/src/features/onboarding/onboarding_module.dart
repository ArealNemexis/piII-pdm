import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/auth/auth_module.dart';
import 'package:obd_app/src/features/onboarding/presentation/view/page/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        // Bind.factory((i) => LoginViewModel()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => OnboardingPage(), children: []),
        ModuleRoute('/login', module: AuthModule())
        // ChildRoute('/get-forgot-password',
        //     child: (_, __) => ConfirmationTokenPage(), children: []),
        // ChildRoute('/register',
        //     child: (_, __) => RegistrationPage(), children: []),
        // ChildRoute('/new-password',
        //     child: (_, __) => NewPasswordPage(), children: []),
        // ModuleRoute('/home', module: HomeModule())
      ];
}
