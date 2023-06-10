import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/core/constants/regular_expressions.dart';
import 'package:flugo_mobile/features/comments/data/models/post_comment_model.dart';
import 'package:flugo_mobile/features/comments/domain/repositories/comments_repository.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/write_comment_cubit/write_comment_state.dart';

/// Cubit that is responsible for writing comment - and posting it to the server
class WriteCommentCubit extends Cubit<WriteCommentState> {
  /// Repository
  final CommentsRepository repo;

  /// Cubit that is responsible for writing comment - and posting it to the server
  WriteCommentCubit(this.repo)
      : super(
          WriteCommentState(),
        );

  /// Post comment text
  void postComment(String text, int jokeId) async {
    if (text.isNotEmpty) {
      if (RegularExpressions.containsOnlyNewLinesPattern
          .allMatches(text)
          .isEmpty) {
        final postResult = await repo.postComment(
          PostCommentModel(
            text: text,
            jokeId: jokeId,
          ),
        );

        postResult.fold(
          (l) => ErrorWriteCommentState(),
          (r) => SuccessWriteCommentState(),
        );
      }
    }
  }

  /// reset state if the comment was posted successfully/unsuccessfully
  void resetTextField() {
    emit(
      WriteCommentState(),
    );
  }
}
