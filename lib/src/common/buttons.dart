import 'package:flutter/material.dart';

typedef VoidNonArgument = void Function();

extension Buttons on Widget {
  Widget secondaryButton(
      {required VoidNonArgument onPressedF,
        required Text textButton,
        required ThemeData theme}) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.transparent,
          textStyle: TextStyle(fontSize: 20),
          side: BorderSide(
            color: Color.fromRGBO(251, 192, 45, 1),
            width: 2.0,
          ),
          padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          onPressedF();
        },
        child: textButton);
  }
}