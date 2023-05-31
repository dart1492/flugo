import 'package:flugo_mobile/features/jokes/domain/entities/post_joke.dart';

class PostJokeModel extends PostJoke {
  PostJokeModel({
    required super.title,
    required super.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'content': content,
    };
  }
}
