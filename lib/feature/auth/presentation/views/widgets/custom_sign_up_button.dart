import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/register.dart';

class CustomSignUpButton extends StatelessWidget {
  const CustomSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              gotoPushReplacement(context, const RegisterView());
            },
            child: Text(
              'SIGN UP',
              style: GetsmallFontsBlack(fontsize: 18),
            ))
      ],
    );
  }
}
