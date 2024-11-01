import 'package:flutter/material.dart';
import 'package:helloworld/LoginScreen.dart';
import 'MainScreen.dart';

void main() {
  // HttpOverrides.global = new MyHttpOverrides();

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen()));
}
