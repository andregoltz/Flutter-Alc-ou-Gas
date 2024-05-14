import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 60,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 100,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Álcool ou Gasolina",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Big Shoulders Display"),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
