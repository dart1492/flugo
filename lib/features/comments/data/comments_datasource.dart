// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';
import 'package:flugo_mobile/features/comments/domain/entities/post_comment.dart';

abstract class CommentsDatasource {
  Future<List<GetComment>> getComments(int jokeId);

  Future<void> postComment(PostComment comment);

  Future<void> deleteComment(int commentId);
}

class DioCommentsDatasourceImpl extends CommentsDatasource {
  final Dio dio;
  DioCommentsDatasourceImpl({
    required this.dio,
  });
  @override
  Future<List<GetComment>> getComments(int jokeId) async {
    //TODO: GET COMMENTS
    return [
      GetComment(
        text: "Text comment",
        authorId: 12,
      ),
    ];
  }

  @override
  Future<void> deleteComment(int commentId) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<void> postComment(PostComment comment) {
    // TODO: implement postComment
    throw UnimplementedError();
  }
}
