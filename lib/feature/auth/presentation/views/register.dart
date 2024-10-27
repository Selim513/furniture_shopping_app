import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/register_cubit/register_state.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/widgets/custom_register_body.dart';
import 'package:furniture_shopping_app/feature/views/home/bottomNavBar.dart';
import 'package:furniture_shopping_app/feature/widgets/scaffoldMessenger.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, AuthState>(
        listener: (context, state) async {
          if (state is RegisterSuccessState) {
            ShowSuccessMessage(state.successMessage, context);
            gotoPushReplacement(context, const BottomNavBarView());
          } else if (state is RegisterErrorState) {
            showErrorMessage(state.errorMessage, context);
            print(state.errorMessage);
          } else {
            RegisterLoadingState();
            const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        child: CustomRegisterBody());
  }
}
