import 'package:aog/widgets/loading.widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Success extends StatelessWidget {
  var result = "";
  void Function()? reset;

  Success({
    super.key,
    required this.result,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          LoadingButton(
            busy: false,
            invert: true,
            func: reset,
            text: "CALCULAR NOVAMENTE",
          ),
        ],
      ),
    );
  }
}
