import 'package:flutter/material.dart';
import 'package:minimal_app/pages/login.dart';
import 'package:minimal_app/pages/signup.dart';
import 'package:minimal_app/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Welcome(),
        "/login": (context) => Login(),
        "/signup": (context) => Signup(),
      },
    );
  }
}
