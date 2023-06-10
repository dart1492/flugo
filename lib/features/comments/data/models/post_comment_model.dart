// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/comments/domain/entities/post_comment.dart';

class PostCommentModel extends PostComment {
  PostCommentModel({required super.text, required super.jokeId});

  @override
  Map<String, dynamic> toMap() {
    return {
      "text": text,
      "joke_id": jokeId,
    };
  }
}
