import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    this.bgColor = Colors.black,
    this.fontColor = Colors.white,
    super.key,
    required this.onPressed,
    required this.textName,
  });
  final Function()? onPressed;
  final String textName;
  final Color bgColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.black,
          elevation: 2,
          shape: const ContinuousRectangleBorder(
              side: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          backgroundColor: bgColor,
          foregroundColor: fontColor,
        ),
        onPressed: onPressed,
        child: Text(
          textName,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              fontFamily: GoogleFonts.nunitoSans().fontFamily),
        ));
  }
}
