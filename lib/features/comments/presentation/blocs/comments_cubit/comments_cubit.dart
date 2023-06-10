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
  ) : super(
          CommentsState(
            listOffset: 0,
          ),
        );

  /// Get a list of comments to the joke
  void getComments(int jokeId) async {
    emit(
      LoadingCommentsState(
        listOffset: state.listOffset,
      ),
    );
    final getResult = await repo.getComments(
      jokeId,
      state.listOffset,
    );
    getResult.fold(
      (l) => emit(
        ErrorCommentsState(
          listOffset: state.listOffset,
        ),
      ),
      (r) => emit(
        LoadedCommentsState(
          comments: r,
          listOffset: state.listOffset,
        ),
      ),
    );
  }
}
