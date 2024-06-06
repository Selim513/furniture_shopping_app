class AuthState {}

class AuthinitState extends AuthState {}

//------------------------------------------------Register------------------------------------
class RegisterSuccessState extends AuthState {
  final String successMessage;

  RegisterSuccessState({required this.successMessage});
}

class RegisterLoadingState extends AuthState {}

class RegisterErrorState extends AuthState {
  final String errorMessage;

  RegisterErrorState({required this.errorMessage});
}

//------------------------------------------------Login--------------------------------
class LoginSuccessState extends AuthState {
  final String successLoginMessage;

  LoginSuccessState({required this.successLoginMessage});
}
class LoginErrorState extends AuthState{
  final String errorLoginMessage;

  LoginErrorState({required this.errorLoginMessage});
}
class LoginLoadingState extends AuthState{}