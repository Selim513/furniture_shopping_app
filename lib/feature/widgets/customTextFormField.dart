import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.validateor, required this.labletText, required this.hintText,
  });
  final TextEditingController controller;
  final String? Function(String? value)? validateor;
  final String labletText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validateor,
      controller: controller,
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 233, 232, 232),
        filled: true,
        labelText: labletText,
        hintText: hintText,
        labelStyle: GetsmallFontsGrey(fontsize: 16),
        hintStyle: GetsmallFontsGrey(fontsize: 16),
      ),
    );
  }
}
