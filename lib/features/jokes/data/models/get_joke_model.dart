// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';

class GetJokeModel extends GetJoke {
  GetJokeModel({
    required super.title,
    required super.text,
    required super.username,
    required super.id,
  });

  factory GetJokeModel.fromMap(Map<String, dynamic> map) {
    return GetJokeModel(
      title: map['title'] as String,
      text: map['text'] as String,
      username: map['username'] as String,
      id: map["id"] as int,
    );
  }

  factory GetJokeModel.fromJson(String source) =>
      GetJokeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
