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
}
