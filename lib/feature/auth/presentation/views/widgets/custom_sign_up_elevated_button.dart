import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';

class CustomSignUpElevatedButton extends StatelessWidget {
  const CustomSignUpElevatedButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;

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
        textName: 'SIGN UP',
        onPressed: () {
          if (formKey.currentState!.validate()) {
            context.read<RegisterCubit>().Register(emailController.text,
                passwordController.text, nameController.text);
          }
        },
      ),
    );
  }
}
