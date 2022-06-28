import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:obd_app/src/common/buttons.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/get_confirmation_token_viewmodel.dart';

class ConfirmationTokenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'login App',
      debugShowCheckedModeBanner: false,
      home: GetConfirmationTokenPage(),
    );
  }
}

class GetConfirmationTokenPage extends StatefulWidget {
  const GetConfirmationTokenPage({Key? key}) : super(key: key);

  @override
  State<GetConfirmationTokenPage> createState() =>
      _GetConfirmationTokenPageState();
}

class _GetConfirmationTokenPageState
    extends ModularState<GetConfirmationTokenPage, ConfirmationTokenViewModel> {
  final _viewModel = Modular.get<ConfirmationTokenViewModel>();
  late ColorScheme _colors;
  late ThemeData _theme;

  void _getToken() {
    _viewModel.getConfirmationToken();
  }

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    _colors = _theme.colorScheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(42, 42, 42, 1),
        body: Stack(
          children: [
            _mainLogo,
            _buildContainer,
            _buildEnviarButton,
            _loginButton
          ],
        ),
      ),
    );
  }

  Widget get _loginButton => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 350,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: MediaQuery.of(context).size.height * 0.5,
                // width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(bottom: 20),
                child: widget.secondaryButton(
                    theme: _theme,
                    onPressedF: () {
                      Modular.to.navigate("/");
                    },
                    textButton: Text(
                      "login".i18n(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ],
      );

  Widget get _buildContainer => Column(
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
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Text(
                            "msgemail".i18n(),
                            style: TextStyle(
                              color: Colors.yellow[700],
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      _buildEmail,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );

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

  Widget get _buildEmail => Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50,
        alignment: Alignment.center,
        child: Form(
          child: TextField(
            cursorColor: Colors.black,
            showCursor: false,
            onChanged: (value) {
              _viewModel.email = value;
            },
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Email",
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
                contentPadding: EdgeInsets.only(top: 17, left: 15),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.black87,
                  size: 35,
                )),
          ),
        ),
      );

  Widget get _buildEnviarButton => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: MediaQuery.of(context).size.height * 0.5,
                // width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    _getToken();
                  },
                  child: Text(
                    'send'.i18n(),
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellow[700],
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
