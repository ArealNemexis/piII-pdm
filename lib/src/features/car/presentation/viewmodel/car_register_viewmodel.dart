import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/usecase/car_register_usecase.dart';

part 'car_register_viewmodel.g.dart';

class CarRegisterViewModel = _CarRegisterViewModelBase
               with _$CarRegisterViewModel;

abstract class _CarRegisterViewModelBase with Store {
  final _usecase = Modular.get<RegisterCarUseCase>();
  final error = CarRegisterError();

   @observable
   String board = '';

   @observable
   String brand = '';

   @observable
   String model = '';

   @observable
   int? year;

  @action
  String? validateEmptyBoard(String validateBoard) {
    return _usecase.validateEmptyBoard(validateBoard);
  }

  @action
  String? validateEmptyBrand(String validateBrand) {
    return _usecase.validateEmptyBoard(validateBrand);
  }

  @action
  String? validateEmptyModel(String validateModel) {
    return _usecase.validateEmptyModel(validateModel);
  }

  @action
  void validateCarForm() {
    error.clear();
    error.board = validateEmptyBoard(board);
    error.brand = validateEmptyBrand(brand);
    error.model = validateEmptyModel(model);
    error.year = year;
  }

Future<int?> registerCar() async{
  validateCarForm();
  if(!error.hasErrors) {
    int? response = await _usecase.registerCar(brand, model, board, year!);

    if(response == 200){
      Modular.to.navigate("/show-cars");
    }
    return response;
  }else {
    return null;
  }
}
}        

class CarRegisterError = _CarRegisterErrorBase with _$CarRegisterError;

abstract class _CarRegisterErrorBase with Store {

   @observable
   String? board;

   @observable
   String? brand;

   @observable
   String? model;

   @observable
   int? year;

   @computed
   bool get hasErrors => board != null || brand != null || model != null || year != null;

   void clear() {
     board = null;
     brand = null;
     model = null;
     year = null;
  }

}