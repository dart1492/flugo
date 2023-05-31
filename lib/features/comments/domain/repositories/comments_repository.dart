import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/comments/data/comments_datasource.dart';
import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';
import 'package:flugo_mobile/features/comments/domain/entities/post_comment.dart';

class CommentsRepository {
  final CommentsDatasource datasource;

  CommentsRepository(this.datasource);

  FutureFailable<List<GetComment>> getComments(int jokeId) {
    return RepositoryRequestHandler<List<GetComment>>()(
      request: () => datasource.getComments(jokeId),
    );
  }

  FutureFailable<void> postComment(PostComment comment) {
    return RepositoryRequestHandler()(
      request: () => datasource.postComment(comment),
    );
  }

  FutureFailable<void> deleteComment(int commentId) {
    return RepositoryRequestHandler()(
      request: () => datasource.deleteComment(commentId),
    );
  }
}
