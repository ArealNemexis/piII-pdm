import 'package:obd_app/src/features/car/data/dto/car_response.dart';

abstract class ICarShowInterface {

  Future<List<CarResponseDto>>showCars();
}