import 'package:flutter/material.dart';
import 'package:obd_app/src/features/map/domain/model/gas_station.dart';


class GasStationDetails extends StatelessWidget{
  late GasStation gasStation;

  GasStationDetails({Key? key, required this.gasStation}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          Image.network(gasStation.photograph,
              height: 250,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 24),
            child: Text(
              gasStation.name,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 60, left: 24),
            child: Text(
              gasStation.address,
            ),
          ),
        ],
      ),
    );
  }
}
