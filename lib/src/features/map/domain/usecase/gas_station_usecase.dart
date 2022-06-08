import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:obd_app/src/features/map/domain/repository/gas_station_repository.dart';
import 'package:obd_app/src/features/map/presetation/view/page/gas_station_page.dart';
import 'package:obd_app/src/features/map/presetation/widgets/gas_station_datails.dart';

class GasStationUseCase extends ChangeNotifier {

  double lat = 0.0;
  double long = 0.0;
  String err = "";
  Set<Marker> markers = Set<Marker>();
  late GoogleMapController _mapsController;

  controlPoints() {
    getPosition();

  }

  get mapsController => _mapsController;

  onMapCreated(GoogleMapController gmc) async {
    _mapsController = gmc;
    getPosition();
    loadGasStation();
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

  loadGasStation() {
    final gasStations = GasStationRepository().gasStations;
    gasStations.forEach((gasStation) async{
      markers.add(
        Marker(
          markerId: MarkerId(gasStation.name),
          position: LatLng(gasStation.latitude, gasStation.longitude),
          icon: await BitmapDescriptor.fromAssetImage(
              ImageConfiguration(),
              'lib/assets/images/posto.png'),

          onTap: ()=> {
            showModalBottomSheet(
                context: appKey.currentState!.context,
                builder: (context) => GasStationDetails(gasStation: gasStation),
            )

            },
        ),
      );
    });
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