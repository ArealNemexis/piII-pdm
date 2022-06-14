import 'package:obd_app/src/features/map/domain/model/coordinates.dart';
import 'package:obd_app/src/features/auth/domain/model/user.dart';

abstract class IMap {
  Future<Coordinates> getCoordinates(User user);
}