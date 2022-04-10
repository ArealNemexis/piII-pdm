import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/auth/auth_module.dart';
import 'package:obd_app/src/features/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: AuthModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
