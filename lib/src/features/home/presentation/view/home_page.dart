import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Ola Kenniston"),
      ),
    );
  }


    Widget get _map => Column(
    children: [
      SizedBox(
        height: 30,
        width: 175,
        child: Text('map'.i18n(),
            style: const TextStyle(
            fontFamily: 'Nunito',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text, 
            ),
            textAlign: TextAlign.center,
          ),
        ),
      GestureDetector(
        onTap: () {
          Modular.to.pushNamed('map');
        },
        child: SizedBox(
          height: 110,
          width: 175,
          child: Image.asset('lib/assets/images/mapa.png',
            width: 104,
            height: 104,
            fit: BoxFit.scaleDown,
            ),
          ),
        ),
    ],
  );

}
