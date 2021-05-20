import 'package:first/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),
  ));
}
