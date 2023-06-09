import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/auth/data/auth_datasource.dart';
import 'package:flugo_mobile/features/auth/domain/entities/auth_response.dart';
import 'package:flugo_mobile/features/auth/domain/entities/sign_in_data.dart';
import 'package:flugo_mobile/features/auth/domain/entities/sign_up_data.dart';

/// Repository, responsible for auth operations
class AuthRepository {
  /// Associated datasource
  AuthDatasource datasource;

  /// Repository, responsible for auth operations
  AuthRepository({
    required this.datasource,
  });

  /// Sign up operation
  FutureFailable<void> signUp(SignUpData data) {
    return RepositoryRequestHandler<void>()(
      request: () => datasource.signUp(data),
    );
  }

  /// Sign in operation
  FutureFailable<AuthResponse> signIn(SignInData data) {
    return RepositoryRequestHandler<AuthResponse>()(
      request: () => datasource.signIn(data),
    );
  }
}
