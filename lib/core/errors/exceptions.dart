import 'package:dio/dio.dart';
import 'package:flugo_mobile/core/errors/failure.dart';
import 'package:flugo_mobile/features/auth/data/token_datasource.dart';
import 'package:flugo_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:flugo_mobile/features/auth/domain/repositories/token_repository.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';

/// Internally used function to handle errors
Future<Failure> errorHandler(Object error, Failure? defaultFailure) async {
  sl<Logger>().e(error);
  try {
    if (error is DioError) {
      if (error.response?.statusCode == 401) {
        sl<TokenDatasource>().getToken();
      }
      if (error.response != null) {
        sl<Logger>().e(error.response);
        // TODO: PARSE ERROR
        String? serverError = error.response?.data['errorMessage'];
        return Failure(
          errorMessage: serverError ?? "Unexpected error!",
        );
      }
    }

    var networkInfo = sl<InternetConnectionChecker>();
    if (!(await networkInfo.hasConnection)) {
      return const Failure(errorMessage: "No internet connection");
    }

    return defaultFailure!;
  } catch (err) {
    return const Failure();
  }
}

void handleTokenRefresh() {}
