import 'package:flutter_modular/flutter_modular.dart';
import '../car/domain/repository/car_register_interface.dart';
import 'data/repository/car_register_repository.dart';
import 'domain/usecase/car_register_usecase.dart';
import 'presentation/view/car_register_page.dart';
import 'presentation/viewmodel/car_register_viewmodel.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
       
        Bind.factory((i) => CarRegisterViewModel()),
        Bind.factory((i) => RegisterCarUseCase()),
        Bind.factory<IRegisterCar>((i) => CarRegisterRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/register-car', child: (_, __) => const RegisterCarPage(), children: []),
      ];
}
