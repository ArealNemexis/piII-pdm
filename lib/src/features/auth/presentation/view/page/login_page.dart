import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:obd_app/src/common/buttons.dart';
import 'package:email_validator/email_validator.dart';

import '../../viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginViewModel> {
  String _passwordInputErrorMessage = '';
  String _emailInputErrorMessage = '';

  final _viewModel = Modular.get<LoginViewModel>();
  late ColorScheme _colors;
  late ThemeData _theme;

  void _login() {
    _viewModel.login();
  }

  void _register() {
    Modular.to.navigate("/register");
  }

  Widget get _mainLogo => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('lib/assets/images/car_obd.svg'),
            ],
          ),
        ],
      );

  Widget get _buildForgotPassword => Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 0),
        child: Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    color: Color.fromRGBO(255, 191, 0, 1), fontSize: 18),
              ),
              onPressed: () {
                Modular.to.navigate("/get-forgot-password");
              },
              child: Text(
                'forget_pass'.i18n(),
                textAlign: TextAlign.left,
                style: const TextStyle(color: Color.fromRGBO(255, 191, 0, 1)),
              ),
            ),
          ],
        ),
      );

  Widget get _emailInput => Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width * 0.85,
          height: 50,
          alignment: Alignment.center,
          child: Form(
            child: TextFormField(
              onChanged: (value) {
                validateEmail(value);
                _viewModel.email = value;
              },
              cursorColor: _theme.brightness == Brightness.dark
                  ? Colors.black87
                  : Colors.white60,
              showCursor: false,
              style: TextStyle(
                  color: _theme.brightness == Brightness.dark
                      ? Colors.black87
                      : Colors.white60),
              decoration: InputDecoration(
                  hintText: "email".i18n(),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                  errorText: store.error.email,
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
                      color: _theme.colorScheme.secondary,
                    ),
                  )),
            ),
          ),
        ),
      );

  Widget get _passwordInput => Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width * 0.85,
          height: 50,
          alignment: Alignment.center,
          child: Form(
            child: TextFormField(
              obscureText: true,
              onChanged: (value) {
                validatePassword(value);
                _viewModel.password = value;
              },
              cursorColor: _theme.brightness == Brightness.dark
                  ? Colors.black87
                  : Colors.white60,
              showCursor: false,
              style: TextStyle(
                  color: _theme.brightness == Brightness.dark
                      ? Colors.black87
                      : Colors.white60),
              decoration: InputDecoration(
                  hintText: "password".i18n(),
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                  errorText: store.error.password,
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
                      color: _theme.colorScheme.secondary,
                    ),
                  )),
            ),
          ),
        ),
      );

  Widget get _inputBoxLogin => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: _mainLogo,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: _theme.colorScheme.onBackground,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _emailInput,
                      Padding(
                        padding: const EdgeInsets.only(top: 5.5),
                        child: Text(
                          _emailInputErrorMessage,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      _passwordInput,
                      Padding(
                        padding: const EdgeInsets.only(top: 5.5),
                        child: Text(
                          _passwordInputErrorMessage,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      _buildForgotPassword,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget get _buildDivider => Row(
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

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    _colors = _theme.colorScheme;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: _theme.colorScheme.background,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  _inputBoxLogin,
                  Padding(
                    padding: const EdgeInsets.only(left: 125, top: 265),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(145, 30))),
                      child: Text(
                        "enter".i18n(),
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        _login();
                      },
                    ),
                  ),
                ]),
                _buildDivider,
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: widget.secondaryButton(
                      theme: _theme,
                      onPressedF: () {
                        _register();
                      },
                      textButton: Text(
                        "register".i18n(),
                        style: TextStyle(
                            color: _theme.brightness == Brightness.dark
                                ? Color.fromRGBO(251, 192, 45, 1)
                                : Colors.black87),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      setState(() {
        _passwordInputErrorMessage = "Password can not be empty".i18n();
      });
    } else if (value.length < 6) {
      setState(() {
        _passwordInputErrorMessage =
            "Password must be at least 6 characters".i18n();
      });
    } else {
      setState(() {
        _passwordInputErrorMessage = "";
      });
    }
  }

  void validateEmail(String value) {
    if (value.isEmpty) {
      setState(() {
        _emailInputErrorMessage = "Email can not be empty".i18n();
      });
    } else if (!EmailValidator.validate(value, true)) {
      setState(() {
        _emailInputErrorMessage = "Email is invalid".i18n();
      });
    } else {
      setState(() {
        _emailInputErrorMessage = "";
      });
    }
  }
}
