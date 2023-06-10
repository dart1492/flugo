// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';

class GetCommentModel extends GetComment {
  GetCommentModel({
    required super.text,
    required super.id,
    required super.jokeId,
    required super.username,
  });

  factory GetCommentModel.fromMap(Map<String, dynamic> map) {
    return GetCommentModel(
      id: map['id'] as int,
      jokeId: map['joke_id'] as int,
      text: map['text'] as String,
      username: map['username'] as String,
    );
  }
}
