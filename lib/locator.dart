import 'package:dio/dio.dart';
import 'package:flugo_mobile/core/routing/app_router.dart';
import 'package:flugo_mobile/core/util/api_interceptor.dart';
import 'package:flugo_mobile/features/auth/injection.dart';
import 'package:flugo_mobile/features/comments/injection.dart';
import 'package:flugo_mobile/features/jokes/injection.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

/// Setup locator function - registers all dependencies,
///  needed on the start of this app
Future setupLocator() async {
  sl.registerSingleton<AppRouter>(
    AppRouter(),
  );
  sl.registerSingleton<InternetConnectionChecker>(
    InternetConnectionChecker(),
  );

  final sp = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(
    () => sp,
  );

  setupAuthDependencies();
  setupJokesDependencies();
  setupCommentsDependencies();

  sl.registerSingleton<Dio>(
    Dio()
      ..interceptors.add(
        ApiInterceptor(
          tokenRepo: sl(),
        ),
      ),
  );
}
