import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import '../../viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginViewModel> {
  final _viewModel = Modular.get<LoginViewModel>();

  // late ColorScheme _colors;
  // late ThemeData _theme;
  void _login() {
    _viewModel.login();
  }

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
                _buildImgCarro,
                Container(
                  height: MediaQuery.of(context).size.height * 0.37,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildContainer,
                      _buildLoginButton,
                    ],
                  ),
                ),
                _builDivider,
                const SizedBox(
                  height: 10,
                ),
                _buildCadastrarButton,
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
                        child: _buildEmail,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: _buildSenha,
                      ),
                      Column(
                        children: [
                          _buildEsqSenha,
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

  Widget get _buildEmail => Container(
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

  Widget get _buildSenha => Container(
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

  Widget get _buildEsqSenha => Row(
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
                    _login();
                  },
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

  Widget get _buildCadastrarButton => Column(
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
