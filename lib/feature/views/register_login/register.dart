import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/email_validate.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/core/services/local_storage.dart';
import 'package:furniture_shopping_app/feature/views/main_view/home.dart';
import 'package:furniture_shopping_app/feature/views/register_login/login.dart';
import 'package:furniture_shopping_app/feature/widgets/custom_textform.dart';
import 'package:gap/gap.dart';

import '../../widgets/custombutton.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  bool isvisble = true;
  bool isvisble1 = true;
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
                  CustomTextForm(
                    controller: nameController,
                    hintText: 'Name',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This Field is Required';
                      } else if (value.length < 3) {
                        return 'you Should Enter 3 letter at least';
                      }
                      return null;
                    },
                  ),
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
                  CustomTextForm(
                    obsecureText: isvisble1,
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This Field is Required';
                      } else if (value != passwordController.text) {
                        return 'You entered two different passwords';
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                        onPressed: () {
                          isvisble1 = !isvisble1;
                          setState(() {});
                        },
                        icon: (isvisble1 == true)
                            ? const Icon(CupertinoIcons.eye)
                            : const Icon(CupertinoIcons.eye_slash)),
                  ),
                  const Gap(30),
                  Container(
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
                         
                          gotoPushReplacement(context, const HomeView());
                        }
                      },
                    ),
                  ),
                  const Gap(30),
                  Row(
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
