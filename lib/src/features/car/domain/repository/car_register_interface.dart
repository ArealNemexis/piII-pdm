import 'package:obd_app/src/features/car/domain/model/car.dart';

abstract class IRegisterCar {
  Future<int?> registerCar(CarDto regsitrationCar);
}