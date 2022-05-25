import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class GasStationUseCase extends ChangeNotifier {

  double lat = 0.0;
  double long = 0.0;
  String err = "";

  controlPoints() {
    getPosition();

  }

  getPosition() async {
    try {

      Position position = await _currentPosition();
      lat = position.latitude;
      long = position.longitude;

    }catch (e) {
      err = e.toString();
    }

    notifyListeners();
  }

  Future<Position> _currentPosition() async {

    LocationPermission permission;
    bool ativado = await Geolocator.isLocationServiceEnabled();

    if(!ativado) {
      return Future.error('Por favor, habilite a localização no smartphone ');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {

      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied) {
        return Future.error('Precisa autorizar o acesso a localizacao');
      }

    }

    //se a permissao foi negada para sempre
    //manualmente
    if(permission == LocationPermission.deniedForever) {
      return Future.error('Precisa autorizar o acesso a localizacao');
    }

    return await Geolocator.getCurrentPosition();
  }
}