import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/email_validate.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/widgets/custom_sign_up_button.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/widgets/custom_textform.dart';
import 'package:gap/gap.dart';

import 'custom_login_elevated_button.dart';

class CustomLoginBody extends StatefulWidget {
  const CustomLoginBody({super.key});

  @override
  State<CustomLoginBody> createState() => _CustomLoginBodyState();
}

class _CustomLoginBodyState extends State<CustomLoginBody> {
  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool isvisble = true;

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
                        'HELLO !',
                        style:
                            GetTiteldFontsGrey(color: const Color(0XFF909090)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'WELCOME BACK',
                        style: GetprimaryTitleFontBlack(),
                      ),
                    ],
                  ),
                  const Gap(50),
                  CustomTextForm(
                    controller: emailController,
                    hintText: 'Email',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This Field is Required';
                      } else if (!emailValidate(value)) {
                        return 'Enter a Valid Email';
                      }
                      return null;
                    },
                  ),
                  CustomTextForm(
                    obsecureText: isvisble,
                    controller: passwordController,
                    hintText: 'Password',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This Field is Required';
                      } else if (value.length < 7) {
                        return 'you Should Enter 8 letter at least';
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                        onPressed: () {
                          isvisble = !isvisble;
                          setState(() {});
                        },
                        icon: (isvisble == true)
                            ? const Icon(CupertinoIcons.eye)
                            : const Icon(CupertinoIcons.eye_slash)),
                  ),
                  const Gap(30),
                  CustomLoginElevatedButton(
                      formKey: formKey,
                      emailController: emailController,
                      passwordController: passwordController),
                  const Gap(20),
                  CustomSignUpButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
