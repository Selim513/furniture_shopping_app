import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shopping_app/core/auth/cubit_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthinitState());

//----------------Register----------------------------
  Register(String email, String password, String name) async {
    emit(RegisterLoadingState());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = credential.user!;
      await user.updateDisplayName(name);
      await FirebaseFirestore.instance.collection('Client').doc(user.uid).set({
        "Id": user.uid,
        "name": name,
        "Email": user.email,
        'image': null,
        'phone': null,
        'bio': null,
        'city': null,
        'oreder': null,
        'adress': null,
        'paymentMethod': null,
      }, SetOptions(merge: true));

      emit(RegisterSuccessState(successMessage: 'Thanks for joining us $name'));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterErrorState(
            errorMessage:
                'We recommend using a stronger password for better security.'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterErrorState(
            errorMessage: 'Looks like this email is already registered.'));
      }
    } catch (e) {
      print(e.toString());
      emit(RegisterErrorState(
          errorMessage: 'Something went Wrong Please try again later.'));
    }
  }

  Login(String email, String password) async {
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
