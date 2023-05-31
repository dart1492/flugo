import 'dart:convert';

import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';

class GetJokeModel extends GetJoke {
  GetJokeModel(
      {required super.title,
      required super.content,
      required super.author,
      required super.likesNumber,
      required super.sharesNumber});

  factory GetJokeModel.fromMap(Map<String, dynamic> map) {
    return GetJokeModel(
      title: map['title'] as String,
      content: map['content'] as String,
      author: map['author'] as String,
      likesNumber: map['likesNumber'] as int,
      sharesNumber: map['sharesNumber'] as int,
    );
  }

  factory GetJokeModel.fromJson(String source) =>
      GetJokeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
