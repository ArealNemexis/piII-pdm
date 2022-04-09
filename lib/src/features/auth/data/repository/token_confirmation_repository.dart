import 'dart:convert' show Encoding, jsonDecode, jsonEncode;

import 'package:obd_app/src/features/auth/data/dto/recover_token_dto.dart';
import 'package:obd_app/src/features/auth/domain/repository/token_confirmation_interface.dart';
import 'package:dio/dio.dart';

class ConfirmationTokenRepository implements IConfirmationToken {
  @override
  Future<String?> getConfirmationToken(RecoverTokenDto token) {
    return callBackEnd(token);
  }

  Future<String?> callBackEnd(RecoverTokenDto tokenEmail) async{

    String path = "http://10.0.2.2:8080/auth/forgot-password";
    Dio().options.headers['content-type'] = 'aplication/json';

    final response = await Dio().post(path, data: {
          "email": tokenEmail.email,
        });

    return response.statusMessage;
  }
}