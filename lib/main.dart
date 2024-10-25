import 'package:flutter/material.dart';
import 'package:helloworld/MyStatefulWidget.dart';
import 'package:helloworld/MyStatelessWidget.dart';

void main() {
  // HttpOverrides.global = new MyHttpOverrides();

  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Image.network(
              'https://img.freepik.com/premium-vector/ho-chi-minh-city-vietnam-skyline-with-panorama-white-background-vector-illustration-business-travel-tourism-concept-with-modern-buildings-image-banner-web-site_596401-63.jpg?w=1060'),
        ),
        body: Scaffold(
            body: ListView(
          children: [MyStatelessWidget(), MyStatefulWidget()],
        ))),
  ));
}
