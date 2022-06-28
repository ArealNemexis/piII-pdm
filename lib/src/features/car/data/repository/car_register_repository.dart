import 'package:dio/dio.dart';
import 'package:obd_app/src/features/car/domain/model/car.dart';
import 'package:obd_app/src/features/car/domain/repository/car_register_interface.dart';

class CarRegisterRepository implements IRegisterCar {
  @override
  Future<int?> registerCar(CarDto regsitrationCar) {
    return requestRegisterCar(regsitrationCar);
  }

  Future<int?> requestRegisterCar(CarDto regsitrationCar) async {
    Dio dio = new Dio();

    dio.options.headers['content-Type'] = 'application/json';

    try {
      final Response response = await dio.post(
        'http://10.0.2.2:8080/vehicle/register',
        data: {
          "brand": regsitrationCar.brand,
          "model": regsitrationCar.model,
          "board": regsitrationCar.board,
          "year": regsitrationCar.year,
        },
      );

      return response.statusCode;
    } on DioError catch (e) {
      return e.response?.statusCode;
    }
  }
}
