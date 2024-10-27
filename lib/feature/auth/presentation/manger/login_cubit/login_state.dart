import 'package:furniture_shopping_app/feature/auth/presentation/manger/register_cubit/register_state.dart';

class LoginSuccessState extends AuthState {
  final String successLoginMessage;

  LoginSuccessState({required this.successLoginMessage});
}
class LoginErrorState extends AuthState{
  final String errorLoginMessage;

  LoginErrorState({required this.errorLoginMessage});
}
class LoginLoadingState extends AuthState{}