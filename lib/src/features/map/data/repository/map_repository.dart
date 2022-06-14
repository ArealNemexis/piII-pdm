import 'package:obd_app/src/features/map/domain/model/coordinates.dart';
import 'package:obd_app/src/features/auth/domain/model/user.dart';
import '../../domain/repository/map_interface.dart';


class MapRepository implements IMap {
  @override
  Future<Coordinates> getCoordinates(User user) async {
    throw UnimplementedError();
  }
}