import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import '../../data/dto/car_response.dart';
import '../../domain/usecase/car_show_usecase.dart';

part 'car_show_viewmodel.g.dart';

class CarShowViewModel = _CarShowViewModelBase with _$CarShowViewModel;

abstract class _CarShowViewModelBase with Store {
  final _usecase = Modular.get<CarShowUseCase>();

  Future<List<CarResponseDto>> showCars() async {

    List<CarResponseDto> listCar = await _usecase.showCars();
    return listCar;
  }
}