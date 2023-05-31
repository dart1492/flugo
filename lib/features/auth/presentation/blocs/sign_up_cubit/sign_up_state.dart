import 'package:flugo_mobile/features/auth/presentation/blocs/form_submission_status.dart';

class SignUpState {
  final String email;
  final String password;
  final String displayName;
  final bool isEmailValidated;
  final bool isPasswordValidated;
  final bool isDisplayNameValidated;
  final FormSubmissionStatus status;

  SignUpState({
    required this.email,
    required this.password,
    required this.isEmailValidated,
    required this.isPasswordValidated,
    required this.status,
    required this.displayName,
    required this.isDisplayNameValidated,
  });

  SignUpState copyWith({
    String? email,
    String? password,
    bool? isEmailValidated,
    bool? isPasswordValidated,
    FormSubmissionStatus? status,
    String? displayName,
    bool? isDisplayNameValidated,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      isEmailValidated: isEmailValidated ?? this.isEmailValidated,
      isPasswordValidated: isPasswordValidated ?? this.isPasswordValidated,
      status: status ?? this.status,
      displayName: displayName ?? this.displayName,
      isDisplayNameValidated:
          isDisplayNameValidated ?? this.isDisplayNameValidated,
    );
  }
}
