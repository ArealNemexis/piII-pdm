import 'package:flutter_modular/flutter_modular.dart';
import 'package:obd_app/src/features/car/data/dto/car_response.dart';
import 'package:obd_app/src/features/car/domain/repository/car_show_interface.dart';

class CarShowUseCase {
  final repository = Modular.get<ICarShowInterface>();

  Future<List<CarResponseDto>> showCars(){
    return repository.showCars();
  }
}