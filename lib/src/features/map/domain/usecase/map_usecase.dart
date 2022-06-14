import '../../../auth/domain/model/user.dart';
import '../model/coordinates.dart';
import '../repository/map_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MapUseCase {
  final repository = Modular.get<IMap>();

  Future<Coordinates> getCoordinates(User user) async {
    return repository.getCoordinates(user);
  }
}