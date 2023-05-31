import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/jokes/data/joke_filters_datasource.dart';
import 'package:flugo_mobile/features/jokes/data/jokes_datasource.dart';
import 'package:flugo_mobile/features/jokes/domain/repositories/joke_filters_repository.dart';
import 'package:flugo_mobile/features/jokes/domain/repositories/jokes_repository.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/joke_filters_cubit/joke_filters_cubit.dart';
import 'package:flugo_mobile/locator.dart';

import 'presentation/blocs/global_jokes_cubit/global_jokes_cubit.dart';
import 'presentation/blocs/write_joke_cubit/write_joke_cubit.dart';

void setupJokesDependencies() {
  sl.registerLazySingleton<JokeFiltersDatasource>(
    () => SPJokeFiltersDatasourceImpl(
      sp: sl(),
    ),
  );

  sl.registerLazySingleton<JokeFiltersRepository>(
    () => JokeFiltersRepository(
      datasource: sl(),
    ),
  );

  sl.registerFactory(
    () => JokeFiltersCubit(
      sl(),
    ),
  );

  sl.registerLazySingleton<JokesDatasource>(
    () => JokesDatasourceImpl(
      sl<Dio>(),
    ),
  );

  sl.registerLazySingleton<JokesRepository>(
    () => JokesRepository(
      sl<JokesDatasource>(),
    ),
  );

  sl.registerFactory(
    () => GlobalJokesCubit(
      sl<JokesRepository>(),
    ),
  );

  sl.registerFactory(
    () => WriteJokeCubit(sl<JokesRepository>()),
  );
}
