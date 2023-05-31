import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/features/comments/domain/repositories/comments_repository.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/comments_cubit/comments_state.dart';

class CommentsCubit extends Cubit<CommentsState> {
  final CommentsRepository repo;
  CommentsCubit(
    this.repo,
  ) : super(CommentsState());

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
