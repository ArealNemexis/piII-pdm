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
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("lib/assets/images/car_obd.svg"),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.all(15),
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(33, 33, 33, 1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {
                                _viewModel.password = value;
                              },
                              style: TextStyle(color: Colors.black54),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 11, bottom: 11, top: 11, right: 11),
                                labelText: "Senha",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {
                                _viewModel.passwordConfirm = value;
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 11, bottom: 11, top: 11, right: 11),
                                labelText: "Confirmar Senha",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(40),
                      primary: Color.fromRGBO(250, 195, 0, 1)),
                  onPressed: () {
                    _changePassword();
                    Modular.to.navigate('/');
                  },
                  child: const Text('Salvar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _boxInput(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.21,
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Color.fromRGBO(33, 33, 33, 1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextField(
                  style: TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Email",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Senha",
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
