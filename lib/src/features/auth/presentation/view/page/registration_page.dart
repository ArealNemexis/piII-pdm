import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:obd_app/src/features/auth/presentation/viewmodel/registration_viewmodel.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _viewModel = Modular.get<RegistrationViewModel>();

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
                  height: 390,
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
                        height: MediaQuery.of(context).size.height * 0.38,
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
                                  height: 35,
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
                                  onChanged: (value) {
                                    _viewModel.name = value;
                                  },
                                  cursorColor: Colors.white,
                                  showCursor: false,
                                  textAlign: TextAlign.start,
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
                            ),
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
                  height: 310,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_viewModel.password ==
                              _viewModel.passwordConfirm) {
                            _viewModel.register();
                            Modular.to.navigate('/login');
                          }
                        },
                        child: Text(
                          'Register'.i18n(),
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
