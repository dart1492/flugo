import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/features/comments/domain/entities/post_comment.dart';
import 'package:flugo_mobile/features/comments/domain/repositories/comments_repository.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/write_comment_cubit/write_comment_state.dart';

class WriteCommentCubit extends Cubit<WriteCommentState> {
  final CommentsRepository repo;
  WriteCommentCubit(this.repo)
      : super(
          WriteCommentState(),
        );

  void postComment(String text) async {
    if (text.isNotEmpty) {
      final postResult = await repo.postComment(
        PostComment(text: text),
      );

      postResult.fold(
        (l) => ErrorWriteCommentState(),
        (r) => SuccessWriteCommentState(),
      );
    }
  }

  /// reset state if the comment was posted successfully/unsuccessfully
  void resetTextField() {
    emit(
      WriteCommentState(),
    );
  }
}
