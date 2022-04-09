import 'package:obd_app/src/features/auth/domain/model/registration.dart';

abstract class IRegistration {
  Future<int?> register(RegistrationDTO registartion);
}
