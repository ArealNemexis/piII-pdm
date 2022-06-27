import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:obd_app/src/features/auth/presentation/viewmodel/registration_viewmodel.dart';
import 'package:obd_app/src/common/buttons.dart';

import '../../../data/dto/http_response/http_response.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState
    // ignore: deprecated_member_use
    extends ModularState<RegistrationPage, RegistrationViewModel> {
  final _viewModel = Modular.get<RegistrationViewModel>();
  late ColorScheme _colors;
  late ThemeData _theme;

  void _register() async {
    int? response = await _viewModel.register();
  }

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    _colors = _theme.colorScheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: _theme.colorScheme.background,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        _mainLogo,
                        _registrationForm,
                      ],
                    ),
                    _buttonRegister,
                  ],
                ),
                _buttonGoToLogin
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get _mainLogo => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('lib/assets/images/car_obd.svg'),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      );

  Widget get _nameInput => Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50,
        alignment: Alignment.center,
        child: Form(
          child: TextFormField(
            onChanged: (value) {
              _viewModel.name = value;
            },
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "Name".i18n(),
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                // fillColor: Colors.grey.shade200,
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
                    width: 1.0,
                  ),
                ),
                filled: true,
                hoverColor: Colors.yellow.shade200,
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'lib/assets/images/user.svg',
                  ),
                )),
          ),
        ),
      );

  Widget get _emailInput => Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50,
        alignment: Alignment.center,
        child: Form(
          child: TextField(
            onChanged: (value) {
              _viewModel.email = value;
            },
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "Email".i18n(),
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                // fillColor: Colors.grey.shade200,
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
                    width: 1.0,
                  ),
                ),
                filled: true,
                hoverColor: Colors.yellow.shade200,
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'lib/assets/images/email.svg',
                  ),
                )),
          ),
        ),
      );

  Widget get _passwordInput => Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50,
        alignment: Alignment.center,
        child: Form(
          child: TextField(
            obscureText: true,
            onChanged: (value) {
              _viewModel.password = value;
            },
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "Password".i18n(),
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                // fillColor: Colors.grey.shade200,
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
                    width: 1.0,
                  ),
                ),
                filled: true,
                hoverColor: Colors.yellow.shade200,
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'lib/assets/images/locker.svg',
                  ),
                )),
          ),
        ),
      );

  Widget get _passwordConfirmInput => Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50,
        alignment: Alignment.center,
        child: Form(
          child: TextField(
            obscureText: true,
            onChanged: (value) {
              _viewModel.passwordConfirm = value;
            },
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "Password Confirmation".i18n(),
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                // fillColor: Colors.grey.shade200,
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
                    width: 1.0,
                  ),
                ),
                filled: true,
                hoverColor: Colors.yellow.shade200,
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'lib/assets/images/locker.svg',
                  ),
                )),
          ),
        ),
      );

  Widget get _buttonRegister => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 360,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: ElevatedButton(
                  onPressed: () {
                    if (_viewModel.password == _viewModel.passwordConfirm) {
                      _register();
                    }
                  },
                  child: Text(
                    'Register'.i18n(),
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget get _buttonGoToLogin => widget.secondaryButton(
      onPressedF: () {
        Modular.to.navigate("/");
      },
      textButton: Text(
        "Login",
        style: TextStyle(
            color: _theme.brightness == Brightness.dark
                ? Color.fromRGBO(251, 192, 45, 1)
                : Colors.black87),
      ),
      theme: _theme);

  Widget get _registrationForm => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.43,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(color: Colors.black87),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      _nameInput,
                      SizedBox(
                        height: 25,
                      ),
                      _emailInput,
                      SizedBox(
                        height: 25,
                      ),
                      _passwordInput,
                      SizedBox(
                        height: 25,
                      ),
                      _passwordConfirmInput,
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      );
}
