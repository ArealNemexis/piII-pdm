import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import '../viewmodel/car_register_viewmodel.dart';
import 'package:localization/localization.dart';

class RegisterCarPage extends StatefulWidget {
  const RegisterCarPage({Key? key}) : super(key: key);

  @override
  State<RegisterCarPage> createState() => _RegisterCarPageState();
}

// ignore: deprecated_member_use
class _RegisterCarPageState
    extends ModularState<RegisterCarPage, CarRegisterViewModel> {
  final _viewModel = Modular.get<CarRegisterViewModel>();

  late ColorScheme _colors;
  late ThemeData _theme;

  void _registerCar() async {
    int? response = await _viewModel.registerCar();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 193, 7, 1),
          title: Text(
            'cadastrocar'.i18n(),
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildImgCarro,
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildContainer,
                      _buildRegButton,
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

  Widget get _buildImgCarro => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("lib/assets/images/car_obd.svg"),
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
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 66, 66, 66),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildMarca,
                      _buildModelo,
                      _buildPlaca,
                      _buildAno,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget get _buildMarca => Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width * 0.85,
          height: 50,
          alignment: Alignment.center,
          child: Form(
            child: TextFormField(
              onChanged: (value) {
                _viewModel.brand = value;
              },
              decoration: InputDecoration(
                  hintText: "marca".i18n(),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: (Colors.yellow[700])!,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: (Colors.yellow[700])!,
                      width: 3.0,
                    ),
                  ),
                  filled: true,
                  hoverColor: Colors.yellow.shade200,
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'lib/assets/images/locker.svg',
                      // color: _theme.colorScheme.secondary,
                    ),
                  )),
            ),
          ),
        ),
      );

  Widget get _buildModelo => Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width * 0.85,
          height: 50,
          alignment: Alignment.center,
          child: Form(
            child: TextFormField(
              onChanged: (value) {
                _viewModel.model = value;
              },
              decoration: InputDecoration(
                  hintText: "modelo".i18n(),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: (Colors.yellow[700])!,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: (Colors.yellow[700])!,
                      width: 3.0,
                    ),
                  ),
                  filled: true,
                  hoverColor: Colors.yellow.shade200,
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'lib/assets/images/locker.svg',
                      // color: _theme.colorScheme.secondary,
                    ),
                  )),
            ),
          ),
        ),
      );

  Widget get _buildAno => Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width * 0.85,
          height: 50,
          alignment: Alignment.center,
          child: Form(
            child: TextFormField(
              onChanged: (value) {
                _viewModel.year = value;
              },
              decoration: InputDecoration(
                  hintText: "ano".i18n(),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: (Colors.yellow[700])!,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: (Colors.yellow[700])!,
                      width: 3.0,
                    ),
                  ),
                  filled: true,
                  hoverColor: Colors.yellow.shade200,
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'lib/assets/images/locker.svg',
                      // color: _theme.colorScheme.secondary,
                    ),
                  )),
            ),
          ),
        ),
      );

  Widget get _buildPlaca => Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width * 0.85,
          height: 50,
          alignment: Alignment.center,
          child: Form(
            child: TextFormField(
              onChanged: (value) {
                _viewModel.board = value;
              },
              decoration: InputDecoration(
                  hintText: "placa".i18n(),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: (Colors.yellow[700])!,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: (Colors.yellow[700])!,
                      width: 3.0,
                    ),
                  ),
                  filled: true,
                  hoverColor: Colors.yellow.shade200,
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'lib/assets/images/locker.svg',
                      // color: _theme.colorScheme.secondary,
                    ),
                  )),
            ),
          ),
        ),
      );

  Widget get _buildRegButton => Row(
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
                    _registerCar();
                  },
                  child: Text(
                    'register'.i18n(),
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(255, 193, 7, 1),
                      fixedSize: const Size(190, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
            ],
          ),
        ],
      );
}
