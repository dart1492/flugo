import 'package:flugo_mobile/features/auth/domain/repositories/token_repository.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This cubit is for managing token state
/// specifically to reset token when user
///  logs out and to check if token is in shared preferences
///  to show sign in or home page
class AuthCubit extends Cubit<AuthState> {
  /// Associated repo
  final TokenRepository repo;

  /// This cubit is for managing token state
  /// specifically to reset token when user
  ///  logs out and to check if token is in shared preferences
  ///  to show sign in or home page
  AuthCubit(this.repo) : super(AuthState());

  /// Check if there is a local token registered
  void checkTokenRegistered() async {
    final result = await repo.getToken();
    result.fold(
      (l) => emit(
        ErrorAuthenticationState(),
      ),
      (r) {
        if (r == null || r == "") {
          emit(UnauthenticatedState());
        } else {
          emit(AuthenticatedState());
        }
      },
    );
  }

  /// Save token from the server
  void saveToken(String bearerToken) async {
    final result = await repo.setToken(bearerToken);
    result.fold(
      (l) => emit(
        ErrorAuthenticationState(),
      ),
      (r) {
        emit(
          AuthenticatedState(),
        );
      },
    );
  }

  /// Method to erase currently saved access token and do a log out
  void eraseToken() async {
    emit(
      UnauthenticatedState(),
    );
    final result = await repo.setToken("");
    result.fold(
      (l) => emit(
        ErrorAuthenticationState(),
      ),
      (r) => emit(
        UnauthenticatedState(),
      ),
    );
  }
}
