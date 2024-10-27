import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/login_cubit/login_state.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/register_cubit/register_state.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/widgets/custom_login_body.dart';
import 'package:furniture_shopping_app/feature/views/home/bottomNavBar.dart';
import 'package:furniture_shopping_app/feature/widgets/scaffoldMessenger.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          gotoPushReplacement(context, const BottomNavBarView());
          ShowSuccessMessage(state.successLoginMessage, context);
        } else if (state is LoginErrorState) {
          showErrorMessage(state.errorLoginMessage, context);
        } else if (state is LoginLoadingState) {
          const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
      child: CustomLoginBody(),
    );
  }
}

      // child: Scaffold(
      //   backgroundColor: Colors.white,
      //   body: Center(
      //     child: Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Form(
      //         key: formKey,
      //         child: SingleChildScrollView(
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Row(
      //                 children: [
      //                   Text(
      //                     'HELLO !',
      //                     style: GetTiteldFontsGrey(
      //                         color: const Color(0XFF909090)),
      //                   ),
      //                 ],
      //               ),
      //               Row(
      //                 children: [
      //                   Text(
      //                     'WELCOME BACK',
      //                     style: GetprimaryTitleFontBlack(),
      //                   ),
      //                 ],
      //               ),
      //               const Gap(50),
      //               CustomTextForm(
      //                 controller: emailController,
      //                 hintText: 'Email',
      //                 validator: (value) {
      //                   if (value!.isEmpty) {
      //                     return 'This Field is Required';
      //                   } else if (!emailValidate(value)) {
      //                     return 'Enter a Valid Email';
      //                   }
      //                   return null;
      //                 },
      //               ),
      //               CustomTextForm(
      //                 obsecureText: isvisble,
      //                 controller: passwordController,
      //                 hintText: 'Password',
      //                 validator: (value) {
      //                   if (value!.isEmpty) {
      //                     return 'This Field is Required';
      //                   } else if (value.length < 7) {
      //                     return 'you Should Enter 8 letter at least';
      //                   }
      //                   return null;
      //                 },
      //                 suffixIcon: IconButton(
      //                     onPressed: () {
      //                       isvisble = !isvisble;
      //                       setState(() {});
      //                     },
      //                     icon: (isvisble == true)
      //                         ? const Icon(CupertinoIcons.eye)
      //                         : const Icon(CupertinoIcons.eye_slash)),
      //               ),
      //               const Gap(30),
      //               Container(
      //                 decoration: BoxDecoration(boxShadow: [
      //                   BoxShadow(
      //                     color: Colors.black.withOpacity(0.3),
      //                     offset: const Offset(0, 3),
      //                     blurRadius: 6.0,
      //                     spreadRadius: 0.0,
      //                   )
      //                 ]),
      //                 width: 300,
      //                 height: 60,
      //                 child: CustomElevatedButton(
      //                   textName: 'LOGIN',
      //                   onPressed: () {
      //                     if (formKey.currentState!.validate()) {
      //                       context.read<AuthCubit>().Login(
      //                             emailController.text,
      //                             passwordController.text,
      //                           );
      //                     }
      //                   },
      //                 ),
      //               ),
      //               const Gap(20),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   TextButton(
      //                       onPressed: () {
      //                         gotoPushReplacement(
      //                             context, const RegisterView());
      //                       },
      //                       child: Text(
      //                         'SIGN UP',
      //                         style: GetsmallFontsBlack(fontsize: 18),
      //                       ))
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),