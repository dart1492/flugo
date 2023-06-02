import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/auth/data/token_datasource.dart';

/// Repository for auth token interactions
class TokenRepository {
  /// Associated datasource
  final TokenDatasource datasource;

  /// Repository for auth token interactions
  TokenRepository({
    required this.datasource,
  });

  /// get String token
  FutureFailable<String?> getToken() {
    return RepositoryRequestHandler<String?>()(
      request: () => datasource.getToken(),
    );
  }

  /// set String token
  FutureFailable<void> setToken(String token) {
    return RepositoryRequestHandler<void>()(
      request: () => datasource.setToken(token),
    );
  }
}
