import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obd_app/src/features/auth/presentation/viewmodel/new_password/new_password_viewmodel.dart';

class NewPasswordPage extends StatefulWidget {
  NewPasswordPage({Key? key}) : super(key: key);

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final _viewModel = Modular.get<NewPasswordViewModel>();

  void _changePassword() {
    _viewModel.newPassword();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
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
            ),
            Column(
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
                          color: Colors.black87,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 43,
                                ),
                              ],
                            ),
                            Container(
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
                                  cursorColor: Colors.white,
                                  showCursor: false,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      hintText: "Nova senha",
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
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
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
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      hintText: "Repita a senha",
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 210,
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
                          if (_viewModel.password ==
                              _viewModel.passwordConfirm) {
                            _changePassword();
                            Modular.to.navigate('/');
                          }
                        },
                        child: Text(
                          'Salvar',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.yellow[700],
                            fixedSize: const Size(180, 45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(BuildContext context) {
  return Column(
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
                        "insira seu e-mail cadastrado",
                        style: TextStyle(
                          color: Colors.yellow[700],
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  _buildEmail(context),
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
    padding: EdgeInsets.symmetric(horizontal: 15),
    width: MediaQuery.of(context).size.width * 0.85,
    height: 50,
    alignment: Alignment.center,
    child: Form(
      child: TextField(
        cursorColor: Colors.black,
        showCursor: false,
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
}

Widget _buildEnviarButton(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 210,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.5,
            // width: MediaQuery.of(context).size.width * 0.5,
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Salvar',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[700],
                  fixedSize: const Size(180, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
        ],
      ),
    ],
  );
}
