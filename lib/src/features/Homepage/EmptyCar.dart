import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';

class EmptyCar extends StatefulWidget {
  const EmptyCar({Key? key}) : super(key: key);

  @override
  _EmptyCarState createState() => _EmptyCarState();
}

class _EmptyCarState extends State<EmptyCar> {
  // void _cadastrar_carro() {
  //   _viewModel.cadastrar_carro();
  // }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 217, 0),
          title: Text(
            'Selecionar Carro',
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildContainer,
                      _buildLoginButton,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: _buildMsg,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget get _buildMsg => Container(
        child: Text(
          'Nenhum Veículo Cadastrado',
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 23,
          ),
        ),
      );

  Widget get _buildLoginButton => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: MediaQuery.of(context).size.height * 0.5,
                // width: MediaQuery.of(context).size.width * 0.5,
                // margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // _login();
                  },
                  child: Text(
                    'Cadastrar',
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(255, 193, 7, 1),
                      fixedSize: const Size(180, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
            ],
          ),
        ],
      );
}
