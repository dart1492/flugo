// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/jokes/domain/entities/post_joke.dart';

class PostJokeModel extends PostJoke {
  PostJokeModel({
    required super.title,
    required super.text,
  });

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'text': text,
    };
  }
}
