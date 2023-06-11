// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/comments/data/models/get_comment_model.dart';
import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';
import 'package:flugo_mobile/features/comments/domain/entities/post_comment.dart';

abstract class CommentsDatasource {
  Future<List<GetComment>> getComments(int jokeId, int offset);

  Future<void> postComment(PostComment comment);

  Future<void> deleteComment(int id);
}

class DioCommentsDatasourceImpl extends CommentsDatasource {
  final Dio dio;
  DioCommentsDatasourceImpl({
    required this.dio,
  });
  @override
  Future<List<GetComment>> getComments(int jokeId, int offset) async {
    final result = await dio.get(
      "/comments/$jokeId",
      queryParameters: {
        "limit": 15,
        "offset": offset,
        "order_by": "created_at",
      },
    );

    final dynamicList = result.data as List<dynamic>;
    final List<GetComment> commentsList = [];
    for (int i = 0; i < dynamicList.length; i++) {
      commentsList.add(
        GetCommentModel.fromMap(
          dynamicList[i],
        ),
      );
    }

    return commentsList;
  }

  @override
  Future<void> deleteComment(int id) async {
    await dio.delete("/me/comments/$id");
  }

  @override
  Future<void> postComment(PostComment comment) async {
    await dio.post(
      "/me/comments",
      data: comment.toMap(),
    );
  }
}
