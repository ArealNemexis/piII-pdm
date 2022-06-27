import 'package:dio/dio.dart';
import 'package:obd_app/src/features/car/domain/repository/car_show_interface.dart';
import '../dto/car_response.dart';

class CarShowRepository implements ICarShowInterface {

  @override
  Future<List<CarResponseDto>> showCars() {
      return showCarRequest();
  }

  Future<List<CarResponseDto>> showCarRequest() async {

    Dio dio = new Dio();
    dio.options.headers['content-Type'] = 'application/json';
    Response response;

    response = await dio.get("http://10.0.2.2:8080/vehicle/vehicles");
   
    var listCars = (response.data as List).map((car) {
      return CarResponseDto.fromJson(car);
    }).toList();

   return listCars;
  }
}