import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import 'package:obd_app/src/features/car/domain/model/car.dart';

import '../repository/car_register_interface.dart';

class RegisterCarUseCase {
  final repository = Modular.get<IRegisterCar>();

  Future<int?> registerCar(
      String brand, String model, String board, String year) async {
    return repository.registerCar(CarDto(board, brand, model, year));
  }

  String? validateEmptyBoard(String board) {
    if (board.isEmpty) {
      return "board_is_empty".i18n();
    }
    return null;
  }

  String? validateEmptyBrand(String brand) {
    if (brand.isEmpty) {
      return "brand_is_empty".i18n();
    }
    return null;
  }

  String? validateEmptyModel(String model) {
    if (model.isEmpty) {
      return "model_is_empty".i18n();
    }
    return null;
  }
}
