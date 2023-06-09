// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/auth/domain/entities/sign_in_data.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/form_submission_status.dart';

class SignInState {
  SignInData data;
  final bool isEmailValidated;
  final bool isPasswordValidated;
  final FormSubmissionStatus status;

  SignInState({
    required this.data,
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
      data: data.copyWith(email: email, password: password),
      isEmailValidated: isEmailValidated ?? this.isEmailValidated,
      isPasswordValidated: isPasswordValidated ?? this.isPasswordValidated,
      status: status ?? this.status,
    );
  }
}
