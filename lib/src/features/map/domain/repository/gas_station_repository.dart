import 'package:flutter/material.dart';
import '../model/gas_station.dart';


class GasStationRepository extends ChangeNotifier {

  final List<GasStation> _gasStations = [

    GasStation(name: 'Posto Rota 406 Sul',
        address: 'SHCS SQ 406 PLL - Asa Sul, Brasília - DF, 70255-000',

        photograph: 'https://lh5.googleusercontent.com'
            '/p/AF1QipObLpt7Qs5m7KIyKWww9BN5ETjE7b0G-C4m7zwX=w426-h240-k-no',

        latitude: -15.8175084,
        longitude: -47.8957123),

    GasStation(name: 'Posto 212',
        address: 'Rua Qd Shc Sul, SQS 212, Brasília - DF, 70275-000',

        photograph: 'https://lh5.googleusercontent.com/'
            'p/AF1QipOOBoccNjtK8o20jGjkptFriGp2oIG_XOaprjYl=w458-h240-k-no',

        latitude: -15.8277711,
        longitude: -47.9172467),

    GasStation(name: 'Posto 214 Sul',
        address: 'SHCS, 20 - Asa Sul, Brasília - DF, 70293-010',
        photograph: 'https://lh5.googleusercontent.com/p/'
            'AF1QipPz7NCtKYlpBKJkW3jo6YtEs0HD_3aKqrJFL85K=w426-h240-k-no',

        latitude: -15.8288959,
        longitude: -47.915402),

    GasStation(name: 'Posto Shell - Auto Posto JK',
        address: 'Asa Sul, Brasília - DF, 70310-500',
        photograph: 'https://lh5.googleusercontent.com/p/'
            'AF1QipMKw6ujKfwRcPYMAgT_KC32-NQpgQtdeOxp6mMX=w408-h544-k-no',

        latitude: -15.8294387,
        longitude: -47.9123104),
  ];

  List<GasStation> get gasStations => _gasStations;
}