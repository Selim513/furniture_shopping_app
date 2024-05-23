import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/email_validate.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/views/home/home.dart';
import 'package:furniture_shopping_app/feature/views/register_login/register.dart';
import 'package:furniture_shopping_app/feature/widgets/custom_textform.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                      textName: 'LOGIN',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          gotoPushReplacement(context, const HomeView());
                        }
                      },
                    ),
                  ),
                  const Gap(20),
                  Row(
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
