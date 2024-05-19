import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.textName,
  });
  final Function()? onPressed;
  final String textName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
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
