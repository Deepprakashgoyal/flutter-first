import 'package:first/pages/home_page.dart';
import 'package:first/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First App",
    home: LoginPage(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage()
    },
  ));
}
