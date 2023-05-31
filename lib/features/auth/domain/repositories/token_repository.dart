import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/auth/data/token_datasource.dart';

class TokenRepository {
  final TokenDatasource datasource;
  TokenRepository({
    required this.datasource,
  });

  FutureFailable<String?> getToken() {
    return RepositoryRequestHandler<String?>()(
      request: () => datasource.getToken(),
    );
  }

  FutureFailable<void> setToken(String token) {
    return RepositoryRequestHandler<void>()(
      request: () => datasource.setToken(token),
    );
  }
}
