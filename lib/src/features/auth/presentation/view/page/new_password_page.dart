import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obd_app/src/features/auth/data/dto/http_response/http_response.dart';
import 'package:obd_app/src/common/buttons.dart';
import 'package:obd_app/src/features/auth/presentation/viewmodel/new_password/new_password_viewmodel.dart';
import 'package:localization/localization.dart';

class NewPasswordPage extends StatefulWidget {
  NewPasswordPage({Key? key}) : super(key: key);

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState
    extends ModularState<NewPasswordPage, NewPasswordViewModel> {
  final _viewModel = Modular.get<NewPasswordViewModel>();
  late ColorScheme _colors;
  late ThemeData _theme;

  void _changePassword() async {
    HttpResponse? response = await _viewModel.newPassword();
  }

  void _goToLogin() {
    Modular.to.navigate("/");
  }

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    _colors = _theme.colorScheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: _theme.colorScheme.background,
        body: Stack(
          children: [
            _mainLogo,
            _newPasswordFormInput,
            _buttonSave,
          ],
        ),
      ),
    );
  }

  Widget get _secondaryButton => widget.secondaryButton(
      theme: _theme,
      onPressedF: _goToLogin,
      textButton: Text(
        "Secondary",
        style: TextStyle(
            color: _theme.brightness == Brightness.dark
                ? Color.fromRGBO(251, 192, 45, 1)
                : Colors.black87),
      ));

  Widget get _mainLogo => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('lib/assets/images/car_obd.svg'),
            ],
          ),
          SizedBox(
            height: 260,
          ),
        ],
      );

  Widget get _passwordInput => Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50,
        alignment: Alignment.center,
        child: Form(
          child: TextFormField(
            autofocus: true,
            obscureText: true,
            onChanged: (value) {
              _viewModel.password = value;
            },
            cursorColor: Colors.white,
            showCursor: false,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "new_password".i18n(),
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
      );

  Widget get _confirmPasswordInput => Container(
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
            cursorColor: Colors.black,
            showCursor: false,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "new_password_confirm".i18n(),
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
                errorText: store.error.passwordConfirm,
                errorStyle:
                    TextStyle(backgroundColor: Colors.white, color: Colors.red),
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
      );

  Widget get _newPasswordFormInput => Column(
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
                  height: MediaQuery.of(context).size.height * 0.26,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: _theme.colorScheme.onBackground,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 33,
                          ),
                        ],
                      ),
                      _passwordInput,
                      SizedBox(
                        height: 30,
                      ),
                      _confirmPasswordInput,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget get _buttonSave => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 270,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    _changePassword();
                  },
                  child: Text(
                    'save'.i18n(),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          _secondaryButton
        ],
      );
}
