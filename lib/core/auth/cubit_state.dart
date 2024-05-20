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
