import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/auth/data/auth_datasource.dart';
import 'package:flugo_mobile/features/auth/data/token_datasource.dart';
import 'package:flugo_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:flugo_mobile/features/auth/domain/repositories/token_repository.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/sign_in_cubit/sign_in_cubit.dart';
import 'package:flugo_mobile/locator.dart';
import 'presentation/blocs/auth_cubit/auth_cubit.dart';
import 'presentation/blocs/sign_up_cubit/sign_up_cubit.dart';

/// Setup dependencies from Auth
void setupAuthDependencies() {
  sl.registerLazySingleton<AuthDatasource>(
    () => AuthDatasourceImpl(
      dio: sl<Dio>(),
    ),
  );

  sl.registerLazySingleton<TokenRepository>(
    () => TokenRepository(
      datasource: (sl()),
    ),
  );

  sl.registerLazySingleton<TokenDatasource>(
    () => TokenDatasourceImpl(
      sp: sl(),
    ),
  );

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepository(
      datasource: sl(),
    ),
  );

  sl.registerFactory<AuthCubit>(
    () => AuthCubit(
      sl(),
    ),
  );

  sl.registerFactory(
    () => SignInCubit(
      sl(),
    ),
  );

  sl.registerFactory(
    () => SignUpCubit(
      sl(),
    ),
  );
}
