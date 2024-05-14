import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

// ignore: must_be_immutable
class SubmitForm extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var alcoolCtrl = MoneyMaskedTextController();
  var busy = false;
  void Function()? submitFunc;

  SubmitForm({
    super.key,
    required this.busy,
    required this.submitFunc,
    required this.gasCtrl,
    required this.alcoolCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Gasolina",
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Álcool",
            ctrl: alcoolCtrl,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          func: submitFunc,
          text: "CALCULAR",
        ),
      ],
    );
  }
}
