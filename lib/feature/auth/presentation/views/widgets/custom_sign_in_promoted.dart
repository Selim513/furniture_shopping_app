
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/login.dart';

class SignInPrompt extends StatelessWidget {
  const SignInPrompt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Alread Have account?',
          style: GetsmallFontsGrey(),
        ),
        TextButton(
            onPressed: () {
              gotoPushReplacement(context, const LoginView());
            },
            child: Text(
              'SIGN IN',
              style: GetsmallFontsBlack(),
            ))
      ],
    );
  }
}
