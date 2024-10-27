part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthLoggedIn extends AuthState {
  final LoginModel loginUser;
  AuthLoggedIn({required this.loginUser});
}

final class AuthRegistered extends AuthState {
  final RegisterModel RegisterUser;
  AuthRegistered({required this.RegisterUser});
}

final class AuthError extends AuthState {
  final String error;
  AuthError({required this.error});
}

final class AuthLoggedOut extends AuthState {}
