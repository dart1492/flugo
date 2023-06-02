// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/auth/presentation/blocs/form_submission_status.dart';

class SignInState {
  final String email;
  final String password;
  final bool isEmailValidated;
  final bool isPasswordValidated;
  final FormSubmissionStatus status;

  SignInState({
    required this.email,
    required this.password,
    required this.isEmailValidated,
    required this.isPasswordValidated,
    required this.status,
  });

  SignInState copyWith({
    String? email,
    String? password,
    bool? isEmailValidated,
    bool? isPasswordValidated,
    FormSubmissionStatus? status,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isEmailValidated: isEmailValidated ?? this.isEmailValidated,
      isPasswordValidated: isPasswordValidated ?? this.isPasswordValidated,
      status: status ?? this.status,
    );
  }
}
