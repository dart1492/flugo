import 'package:flugo_mobile/core/util/input_validator.dart';
import 'package:flugo_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/form_submission_status.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/sign_up_cubit/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This Cubit is responsible for field validation +
/// sending data to the server for authentication
class SignUpCubit extends Cubit<SignUpState> {
  /// Auth repository for server interactions
  final AuthRepository repository;

  /// This Cubit is responsible for field validation +
  /// sending data to the server for authentication
  SignUpCubit(this.repository)
      : super(
          SignUpState(
            displayName: '',
            email: '',
            password: '',
            isDisplayNameValidated: true,
            isEmailValidated: true,
            isPasswordValidated: true,
            status: const InitialFormStatus(),
          ),
        );

  /// Validate values of the field
  bool validateFields() {
    bool isEmailValidated = InputValidator.validateEmail(state.email);
    bool isPasswordValidated = InputValidator.validatePassword(state.password);
    bool isDisplayNameValidated =
        InputValidator.validateDisplayName(state.displayName);

    emit(
      state.copyWith(
        isEmailValidated: isEmailValidated,
        isPasswordValidated: isPasswordValidated,
        isDisplayNameValidated: isDisplayNameValidated,
      ),
    );

    if (isDisplayNameValidated && isEmailValidated && isPasswordValidated) {
      return true;
    } else {
      return false;
    }
  }

  /// Reset current state of field's errors to hide error boxes
  void resetFieldErrors() {
    emit(
      state.copyWith(
        isEmailValidated: true,
        isPasswordValidated: true,
        isDisplayNameValidated: true,
      ),
    );
  }

  /// Update email value
  void updateEmail(String email) {
    emit(
      state.copyWith(
        email: email,
        isEmailValidated: true,
      ),
    );
  }

  /// Update password value
  void updatePassword(String password) {
    emit(
      state.copyWith(
        password: password,
        isPasswordValidated: true,
      ),
    );
  }

  /// Update password value
  void updateDisplayName(String displayName) {
    emit(
      state.copyWith(
        password: displayName,
        isDisplayNameValidated: true,
      ),
    );
  }

  /// Sign up with given credentials
  void signUp() async {
    emit(
      state.copyWith(
        status: FormSubmitting(),
      ),
    );
    var result = await repository.signUp(
      state.displayName,
      state.email,
      state.password,
    );

    result.fold(
      (l) => emit(
        state.copyWith(
          status: SubmissionFailed(l.errorMessage),
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: SubmissionSuccess(bearerToken: r.token),
        ),
      ),
    );
  }
}
