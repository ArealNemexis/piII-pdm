import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/home/presentation/view/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage(), children: []),
        // ModuleRoute('/home', module: HomeModule())
      ];
}
