part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  const LoginEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class SignUpEvent extends AuthEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const SignUpEvent({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [firstName, lastName, email, password];
}

class ForgotPasswordEvent extends AuthEvent {
  final String email;

  const ForgotPasswordEvent({required this.email});

  @override
  List<Object?> get props => [email];
}

class VerifyOtpEvent extends AuthEvent {
  final String otp;

  const VerifyOtpEvent({required this.otp});

  @override
  List<Object?> get props => [otp];
}

class ResetPasswordEvent extends AuthEvent {
  final String newPassword;

  const ResetPasswordEvent({required this.newPassword});

  @override
  List<Object?> get props => [newPassword];
}

class LogoutEvent extends AuthEvent {}
