// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/auth/domain/entities/sign_up_data.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/form_submission_status.dart';

class SignUpState {
  final SignUpData data;
  final bool isEmailValidated;
  final bool isPasswordValidated;
  final bool isDisplayNameValidated;
  final FormSubmissionStatus status;

  SignUpState({
    required this.data,
    required this.isEmailValidated,
    required this.isPasswordValidated,
    required this.status,
    required this.isDisplayNameValidated,
  });

  SignUpState copyWith({
    String? email,
    String? password,
    bool? isEmailValidated,
    bool? isPasswordValidated,
    FormSubmissionStatus? status,
    String? username,
    bool? isDisplayNameValidated,
  }) {
    return SignUpState(
      data: data.copyWith(
        email: email,
        username: username,
        password: password,
      ),
      isEmailValidated: isEmailValidated ?? this.isEmailValidated,
      isPasswordValidated: isPasswordValidated ?? this.isPasswordValidated,
      status: status ?? this.status,
      isDisplayNameValidated:
          isDisplayNameValidated ?? this.isDisplayNameValidated,
    );
  }
}
