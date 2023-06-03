import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/features/comments/domain/repositories/comments_repository.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/comments_cubit/comments_state.dart';

/// Cubit responsible for getting comments
class CommentsCubit extends Cubit<CommentsState> {
  /// ASsociated repository
  final CommentsRepository repo;

  /// Cubit responsible for getting comments
  CommentsCubit(
    this.repo,
  ) : super(CommentsState());

  /// Get a list of comments to the joke
  void getComments(int jokeId) async {
    emit(LoadingCommentsState());
    final getResult = await repo.getComments(jokeId);
    getResult.fold(
      (l) => emit(
        ErrorCommentsState(),
      ),
      (r) => emit(
        LoadedCommentsState(
          comments: r,
        ),
      ),
    );
  }
}
