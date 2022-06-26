
import 'package:flutter/material.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';

class ShowCar extends StatefulWidget {
  const ShowCar({Key? key}) : super(key: key);

  @override
  _ShowCarState createState() => _ShowCarState();
}

class _ShowCarState extends State<ShowCar> {
  // void _cadastrar_carro() {
  //   _viewModel.cadastrar_carro();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 193, 7, 1),
          title: Text(
            'Selecionar Carro',
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildImgCarro,
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildContainer,
                  ],
                ),
              ),
              _buildCadButton,
            ],
          ),
        ),
      ),
    );
  }

  Widget get _buildImgCarro => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset("lib/assets/images/car_obd.svg"),
          ],
        ),
      );

  Widget get _buildContainer => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: _buildMarca,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: _buildModelo,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: _buildAno,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: _buildPlaca,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget get _buildMarca => Container(
        child: Text(
          'Marca:',
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 21,
          ),
        ),
      );
  Widget get _buildModelo => Container(
        child: Text(
          'Modelo:',
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 21,
          ),
        ),
      );
  Widget get _buildAno => Container(
        child: Text(
          'Ano:',
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 21,
          ),
        ),
      );
  Widget get _buildPlaca => Container(
        child: Text(
          'Placa:',
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 21,
          ),
        ),
      );

  Widget get _buildCadButton => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    // _cadastrar_carro();
                  },
                  child: Text(
                    'Cadastrar Novo Veículo',
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(255, 193, 7, 1),
                      fixedSize: const Size(260, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
            ],
          ),
        ],
      );
}
