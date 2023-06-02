import 'package:flugo_mobile/features/comments/data/comments_datasource.dart';
import 'package:flugo_mobile/features/comments/domain/repositories/comments_repository.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/comments_cubit/comments_cubit.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/write_comment_cubit/write_comment_cubit.dart';
import 'package:flugo_mobile/locator.dart';

/// setup dependencies for comments feature
void setupCommentsDependencies() {
  sl.registerLazySingleton<CommentsDatasource>(
    () => DioCommentsDatasourceImpl(
      dio: sl(),
    ),
  );

  sl.registerLazySingleton<CommentsRepository>(
    () => CommentsRepository(
      sl(),
    ),
  );

  sl.registerFactory(
    () => CommentsCubit(
      sl(),
    ),
  );

  sl.registerFactory(
    () => WriteCommentCubit(
      sl(),
    ),
  );
}
