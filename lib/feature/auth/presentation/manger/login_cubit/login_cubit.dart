import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/register_cubit/register_state.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/manger/login_cubit/login_state.dart';

class LoginCubit extends Cubit<AuthState> {
  LoginCubit() : super(AuthinitState());

  login(String email, String password) async {
    emit(LoginLoadingState());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccessState(successLoginMessage: 'Welcome Back'));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        emit(LoginErrorState(
            errorLoginMessage:
                'No user found for that email. Please check the email address and try again, or register a new account if you don\'t have one.'));
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        emit(LoginErrorState(
            errorLoginMessage:
                'Incorrect password. Please try again or reset your password if you\'ve forgotten it.'));
      } else {
        print(e.toString());
      }
    }
  }
}
