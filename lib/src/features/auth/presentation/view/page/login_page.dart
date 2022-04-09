import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final _viewModel = Modular.get<LoginViewModel>();

  // late ColorScheme _colors;
  // late ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildImgCarro(context),
                Container(
                  height: MediaQuery.of(context).size.height * 0.37,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildContainer(context),
                      _buildLoginButton(context),
                    ],
                  ),
                ),
                _builDivider,
                const SizedBox(
                  height: 10,
                ),
                _buildCadastrarButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildImgCarro(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("lib/assets/images/car_obd.svg"),
      ],
    ),
  );
}

Widget _buildContainer(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: _buildEmail(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: _buildSenha(context),
                  ),
                  Column(
                    children: [
                      _buildEsqSenha(context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildEmail(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    width: MediaQuery.of(context).size.width * 0.85,
    height: 60,
    alignment: Alignment.center,
    child: const Form(
      child: TextField(
          autofocus: true,
          style: TextStyle(color: Color(0xFF757575), fontSize: 20),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail_outline, color: Colors.black),
            labelText: "Email",
            labelStyle: TextStyle(color: Color(0xFF757575)),
          )),
    ),
  );
}

Widget _buildSenha(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    width: MediaQuery.of(context).size.width * 0.85,
    height: 50,
    alignment: Alignment.center,
    child: Form(
      child: TextField(
          cursorColor: Colors.black,
          showCursor: false,
          autofocus: false,
          obscureText: true,
          keyboardType: TextInputType.text,
          style: const TextStyle(color: Color(0xFF757575), fontSize: 20),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(13.0),
              child: SvgPicture.asset(
                "lib/assets/images/locker.svg",
                color: Colors.black,
              ),
            ),
            labelText: 'Senha',
            labelStyle: const TextStyle(color: Color(0xFF757575)),
          )),
    ),
  );
}

Widget _buildEsqSenha(BuildContext context) {
  return Row(
    children: [
      TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
              color: Color.fromRGBO(255, 191, 0, 1), fontSize: 18),
        ),
        onPressed: () {},
        child: Text(
          'forget_pass'.i18n(),
          textAlign: TextAlign.left,
          style: const TextStyle(color: Color.fromRGBO(255, 191, 0, 1)),
        ),
      ),
    ],
  );
}

Widget _buildLoginButton(BuildContext context) {
  return Column(
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
              onPressed: () {},
              child: Text(
                'login'.i18n(),
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

Widget get _builDivider => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('divider_text'.i18n(),
            style: const TextStyle(
                color: Color.fromRGBO(209, 169, 24, 1), fontSize: 23)
            // style: _theme.textTheme.headline6,
            ),
      ],
    );

Widget _buildCadastrarButton(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'register'.i18n(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 66, 66, 66),
                fixedSize: const Size(200, 65),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(
                        color: Color(0xFFFFC107), width: 3.0))),
          ),
        ],
      ),
    ],
  );
}
