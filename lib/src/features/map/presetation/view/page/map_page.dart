import 'dart:collection';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:obd_app/src/app_theme.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:localization/localization.dart';
import '../../viewmodel/map_viewmodel.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends ModularState<MapPage, MapViewModel> {
  late ThemeData _theme;
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(-15.8349713,-47.917374);
  final Map<String, Marker> _markers = {};
  final Set<Circle> _circles = HashSet();
 
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      store.addMarker('iesb-sul', _center, 'IESB - Campus Sul',
          'SGAS Quadra 613/614, Via L2 Sul - Asa Sul');
      _circles.add(store.addCircle('iesb-sul-circle', _center, 100));
    });
  }

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 47,
        backgroundColor: AlphaColors.backgroundDarkOn,
        title: Text('map'.i18n(), 
            style: const TextStyle(
              fontFamily: 'Nunito',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AlphaColors.secondaryDark, 
            ),
          ),
        ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 14.0,
        ),
        markers: _markers.values.toSet(),
        circles: _circles,
        onLongPress: (latlng) => setState(() {
          _circles.add(store.addCircle(Random().nextInt(10000).toString(), latlng, 100));
        }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AlphaColors.backgroundLightOn,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 47.0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Positioned(
              bottom: 20,
              child: IconButton(
                icon: const Icon(Icons.home, color: AlphaColors.defaultDark),
                onPressed: () {
                  Modular.to.pushNamed('/auth');
                }
              ),  
            )
          ),
        ),
      ),
    );
  }
}