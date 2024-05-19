import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    this.suffixIcon,
    this.obsecureText = false,
    required this.controller,
    required this.hintText,
    required this.validator,
  });
  final TextEditingController controller;
  final String hintText;
  final String? Function(String? value)? validator;
  final Widget? suffixIcon;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                hintText,
                style: GetsmallFontsGrey(
                    fontsize: 14, color: const Color(0xff909090)),
              ),
            ],
          ),
          TextFormField(
              obscureText: obsecureText,
              cursorColor: Colors.black,
              validator: validator,
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                suffixIconColor: Colors.black,
              )),
        ],
      ),
    );
  }
}
