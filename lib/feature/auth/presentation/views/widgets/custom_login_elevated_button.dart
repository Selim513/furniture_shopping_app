import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';

class CustomLoginElevatedButton extends StatelessWidget {
  const CustomLoginElevatedButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          offset: const Offset(0, 3),
          blurRadius: 6.0,
          spreadRadius: 0.0,
        )
      ]),
      width: 300,
      height: 60,
      child: CustomElevatedButton(
        textName: 'LOGIN',
        onPressed: () {
          if (formKey.currentState!.validate()) {
            context.read<LoginCubit>().login(
                  emailController.text,
                  passwordController.text,
                );
          }
        },
      ),
    );
  }
}
