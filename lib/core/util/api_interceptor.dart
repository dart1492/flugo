// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_void_async
import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/auth/domain/repositories/token_repository.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:logger/logger.dart';

/// Dio interceptor for all api calls. It is used to provide bearer tokens and
/// locales the server. Repositories for them are injected

class ApiInterceptor extends Interceptor {
  final TokenRepository tokenRepo;
  ApiInterceptor({
    required this.tokenRepo,
  });
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final tokenResult = await tokenRepo.getToken();
    tokenResult.fold((l) {
      //  if we couldn't get the token just send an empty header
    }, (r) {
      options.headers['Authorization'] = "Bearer $r";
    });

    sl<Logger>().i(options.headers);
    super.onRequest(options, handler);
  }
}
