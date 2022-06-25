import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
import 'features/chatbot/chatscreen.dart';

import 'app_module.dart';
import 'app_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carbot',
      theme: ThemeData(brightness: Brightness.dark),
      home: ChatScreen(),
    );
  }
}
