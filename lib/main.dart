import 'package:flutter/material.dart';
import 'package:flutter_application_3/config/theme.dart';
import 'package:flutter_application_3/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}



