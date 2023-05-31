import 'package:flugo_mobile/core/util/input_validator.dart';
import 'package:flugo_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/form_submission_status.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/sign_in_cubit/sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthRepository repository;

  SignInCubit(this.repository)
      : super(
          SignInState(
            email: '',
            password: '',
            isEmailValidated: true,
            isPasswordValidated: true,
            status: const InitialFormStatus(),
          ),
        );

  /// Validate current state of fields and show/hide boxes
  bool validateFields() {
    bool isEmailValidated = InputValidator.validateEmail(state.email);
    bool isPasswordValidated = InputValidator.validatePassword(state.password);

    emit(
      state.copyWith(
        isEmailValidated: isEmailValidated,
        isPasswordValidated: isPasswordValidated,
      ),
    );

    if (isPasswordValidated && isEmailValidated) {
      return true;
    } else {
      return false;
    }
  }

  /// Reset current state of field's errors to hide error boxes
  void resetFields() {
    emit(
      state.copyWith(
        isEmailValidated: true,
        isPasswordValidated: true,
      ),
    );
  }

  /// Update email value
  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  /// Update password value
  void updatePassword(String password) {
    emit(state.copyWith(password: password));
  }

  void signIn() async {
    emit(
      state.copyWith(
        status: FormSubmitting(),
      ),
    );
    var result = await repository.signIn(
      state.email,
      state.password,
    );

    result.fold(
      (l) => emit(
        state.copyWith(
          status: SubmissionFailed(l.errorMessage),
        ),
      ),
      (r) {
        emit(
          state.copyWith(
            status: SubmissionSuccess(bearerToken: r.token),
          ),
        );
      },
    );
  }
}
