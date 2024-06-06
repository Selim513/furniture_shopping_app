import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.value, required this.onChange});

  final bool value;
  final Function(bool?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            value: value,
            activeColor: Colors.black,
            onChanged: onChange),
        Text(
          'Use as the shipping address',
          style: GetsmallFontsGrey(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
