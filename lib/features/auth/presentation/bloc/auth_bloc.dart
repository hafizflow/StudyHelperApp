import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  LoginEvent(this.email, this.password);
  @override
  List<Object?> get props => [email, password];
}

class SignUpEvent extends AuthEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  SignUpEvent(this.firstName, this.lastName, this.email, this.password);
  @override
  List<Object?> get props => [firstName, lastName, email, password];
}

class LogoutEvent extends AuthEvent {}

class ForgotPasswordEvent extends AuthEvent {
  final String email;
  ForgotPasswordEvent(this.email);
  @override
  List<Object?> get props => [email];
}

class VerifyCodeEvent extends AuthEvent {
  final String code;
  VerifyCodeEvent(this.code);
  @override
  List<Object?> get props => [code];
}

class ResetPasswordEvent extends AuthEvent {
  final String password;
  ResetPasswordEvent(this.password);
  @override
  List<Object?> get props => [password];
}

// States
abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {
  final String userName;
  AuthAuthenticated(this.userName);
  @override
  List<Object?> get props => [userName];
}

class AuthUnauthenticated extends AuthState {}

class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
  @override
  List<Object?> get props => [message];
}

class PasswordResetCodeSent extends AuthState {}

class PasswordResetVerified extends AuthState {}

class PasswordResetSuccess extends AuthState {}

// Bloc
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>(_onLogin);
    on<SignUpEvent>(_onSignUp);
    on<LogoutEvent>(_onLogout);
    on<ForgotPasswordEvent>(_onForgotPassword);
    on<VerifyCodeEvent>(_onVerifyCode);
    on<ResetPasswordEvent>(_onResetPassword);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 1));

    // Mock authentication
    if (event.email.isNotEmpty && event.password.isNotEmpty) {
      emit(AuthAuthenticated('User'));
    } else {
      emit(AuthError('Invalid credentials'));
    }
  }

  Future<void> _onSignUp(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 1));

    // Mock registration
    emit(AuthAuthenticated(event.firstName));
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    emit(AuthUnauthenticated());
  }

  Future<void> _onForgotPassword(
    ForgotPasswordEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 1));
    emit(PasswordResetCodeSent());
  }

  Future<void> _onVerifyCode(
    VerifyCodeEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 1));
    emit(PasswordResetVerified());
  }

  Future<void> _onResetPassword(
    ResetPasswordEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 1));
    emit(PasswordResetSuccess());
  }
}
