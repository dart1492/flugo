import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/auth/data/auth_datasource.dart';
import 'package:flugo_mobile/features/auth/domain/entities/auth_response.dart';

/// Repository, responsible for auth operations
class AuthRepository {
  /// Associated datasource
  AuthDatasource datasource;

  /// Repository, responsible for auth operations
  AuthRepository({
    required this.datasource,
  });

  /// Sign up operation
  FutureFailable<AuthResponse> signUp(
    String displayName,
    String email,
    String password,
  ) {
    return RepositoryRequestHandler<AuthResponse>()(
      request: () => datasource.signIn(email, password),
    );
  }

  /// Sign in operation
  FutureFailable<AuthResponse> signIn(String email, String password) {
    return RepositoryRequestHandler<AuthResponse>()(
      request: () => datasource.signIn(email, password),
    );
  }
}
