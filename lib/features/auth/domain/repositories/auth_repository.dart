import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/auth/data/auth_datasource.dart';
import 'package:flugo_mobile/features/auth/domain/entities/auth_response.dart';

class AuthRepository {
  AuthDatasource datasource;
  AuthRepository({
    required this.datasource,
  });

  FutureFailable<AuthResponse> signUp(
    String displayName,
    String email,
    String password,
  ) {
    return RepositoryRequestHandler<AuthResponse>()(
      request: () => datasource.signIn(email, password),
    );
  }

  FutureFailable<AuthResponse> signIn(String email, String password) {
    return RepositoryRequestHandler<AuthResponse>()(
      request: () => datasource.signIn(email, password),
    );
  }
}
