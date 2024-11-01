import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.network(
          "https://lh3.googleusercontent.com/p/AF1QipNH5wBGDOeaKp6kJS2bwDPxarZG9_g79Ild5_zx=s1360-w1360-h1020-rw"),
      Text("Xin chào các bạn AT18"),
      ElevatedButton(onPressed: () => {}, child: Text("Enter here"))
    ]);
  }
}
