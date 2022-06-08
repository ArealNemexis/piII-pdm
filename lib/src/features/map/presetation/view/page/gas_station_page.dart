import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../../domain/usecase/gas_station_usecase.dart';

final appKey = GlobalKey();

class GasStationPage extends StatelessWidget {

  Widget build(BuildContext context) {

    return Scaffold(
      key: appKey,
      appBar: AppBar(
        title: Text('Postos de combustível'),
      ),

      body: ChangeNotifierProvider<GasStationUseCase>(
        create: (context) => GasStationUseCase(),
        child: Builder(builder: (context) {
          final local = context.watch<GasStationUseCase>();

          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(local.lat, local.long),
              zoom: 18,
            ),
          zoomControlsEnabled: true,
          mapType: MapType.normal,
          myLocationEnabled: true,
          onMapCreated: local.onMapCreated,
          markers: local.markers,
          );
        })
      )

    );
  }
}
