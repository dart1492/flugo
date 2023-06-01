import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/profile/data/profile_datasource.dart';
import 'package:flugo_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:flugo_mobile/locator.dart';

import 'presentation/blocs/profile_cubit/profile_cubit.dart';

void setupProfileDependencies() {
  sl.registerLazySingleton<ProfileDatasource>(
    () => ProfileDatasourceImpl(
      dio: sl<Dio>(),
    ),
  );

  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepository(
      sl<ProfileDatasource>(),
    ),
  );

  sl.registerFactory(
    () => ProfileCubit(
      sl<ProfileRepository>(),
    ),
  );
}
