import 'package:flugo_mobile/core/constants/regular_expressions.dart';
import 'package:flugo_mobile/features/auth/data/models/sign_in_data_model.dart';
import 'package:flugo_mobile/features/auth/data/models/sign_up_data_model.dart';
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
            data: SignUpDataModel(
              email: '',
              password: '',
              username: '',
            ),
            isDisplayNameValidated: true,
            isEmailValidated: true,
            isPasswordValidated: true,
            status: const InitialFormStatus(),
          ),
        );

  /// Validate values of the field
  bool validateFields() {
    bool isEmailValidated = RegularExpressions.emailValidationPattern.hasMatch(
      state.data.email,
    );
    bool isPasswordValidated =
        RegularExpressions.passwordValidationPattern.hasMatch(
      state.data.password,
    );

    emit(
      state.copyWith(
        isEmailValidated: isEmailValidated,
        isPasswordValidated: isPasswordValidated,
        isDisplayNameValidated: true,
      ),
    );

    if (isEmailValidated && isPasswordValidated) {
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

  /// reset error status to hide dialogs
  void resetFormStatus() {
    emit(
      state.copyWith(
        status: const InitialFormStatus(),
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
  void updateUsername(String username) {
    emit(
      state.copyWith(
        username: username,
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
      state.data,
    );

    result.fold(
      (l) => emit(
        state.copyWith(
          status: SubmissionFailed(
            l.errorMessage,
          ),
        ),
      ),
      (r) async {
        // do sign in if the sign up operation was successful
        final signInResult = await repository.signIn(
          SignInDataModel(
            email: state.data.email,
            password: state.data.password,
          ),
        );
        signInResult.fold(
          (l) => emit(
            state.copyWith(
              status: SubmissionFailed(
                l.errorMessage,
              ),
            ),
          ),
          (r) => emit(
            state.copyWith(
              status: SubmissionSuccess(
                bearerToken: r.bearerToken,
              ),
            ),
          ),
        );
      },
    );
  }
}
