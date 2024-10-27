import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/widgets/custom_column_form.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/widgets/custom_sign_in_promoted.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/widgets/custom_sign_up_elevated_button.dart';
import 'package:gap/gap.dart';

class CustomRegisterBody extends StatefulWidget {
  const CustomRegisterBody({super.key});

  @override
  State<CustomRegisterBody> createState() => _CustomRegisterBodyState();
}

class _CustomRegisterBodyState extends State<CustomRegisterBody> {
  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'WELCOME',
                        style: GetprimaryTitleFontBlack(),
                      ),
                    ],
                  ),
                  const Gap(50),
                  CustomColumnForm(
                    confirmPasswordController: confirmPasswordController,
                    emailController: emailController,
                    nameController: nameController,
                    passwordController: passwordController,
                  ),
                  const Gap(30),
                  CustomSignUpElevatedButton(
                      formKey: formKey,
                      emailController: emailController,
                      passwordController: passwordController,
                      nameController: nameController),
                  const Gap(30),
                  SignInPrompt()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
