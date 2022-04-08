import 'dart:html';

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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImgCarro(context),
            const SizedBox(
              height: 20,
            ),
            _buildContainer(context),
            _buildEnviarButton(context),
            const SizedBox(
              height: 10,
            ),
            _builDivider,
            _buildCadastrarButton(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildImgCarro(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset("lib/assets/images/car_obd.svg"),
    ],
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
                  const SizedBox(
                    height: 20,
                  ),
                  _buildEmail(context),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildSenha(context),
                  Column(
                    children: [
                      const SizedBox(
                          // height: 50,
                          ),
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
    child: const Form(
      child: TextField(
          cursorColor: Colors.black,
          showCursor: false,
          autofocus: false,
          obscureText: true,
          keyboardType: TextInputType.text,
          style: TextStyle(color: Color(0xFF757575), fontSize: 20),
          decoration: InputDecoration(
            prefix: Icon(Icons.password_outlined, color: Colors.black),
            // prefixIcon: Padding(
            //   padding: EdgeInsets.all(8),
            //   child: SvgPicture.asset('lib/assets/images/locker.svg'),
            // ),
            // labelText: Text('pass'.i18n()),
            // )
            labelText: 'Senha',
            labelStyle: TextStyle(color: Color(0xFF757575)),
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

Widget _buildEnviarButton(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(
          // height: 20,
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
        const SizedBox(
          height: 20,
        ),
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
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // BorderRadius: BorderRadius.circular(50),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 3.0, color: Color(0xFFFFC107)),
                left: BorderSide(width: 3.0, color: Color(0xFFFFC107)),
                right: BorderSide(width: 3.0, color: Color(0xFFFFC107)),
                bottom: BorderSide(width: 3.0, color: Color(0xFFFFC107)),
              ),
            ),
            // height: MediaQuery.of(context).size.height * 0.5,
            // width: MediaQuery.of(context).size.width * 0.5,
            // margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'register'.i18n(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 66, 66, 66),
                  fixedSize: const Size(200, 65),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
        ],
      ),
    ],
  );
}
