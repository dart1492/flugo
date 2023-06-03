// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:flugo_mobile/features/jokes/domain/entities/joke_filters.dart';

class JokeFiltersModel extends JokeFilters {
  JokeFiltersModel({required super.author});
  JokeFiltersModel copyWith({
    String? author,
  }) {
    return JokeFiltersModel(
      author: author ?? this.author,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': author,
    };
  }

  factory JokeFiltersModel.fromMap(Map<String, dynamic> map) {
    return JokeFiltersModel(
      author: map['author'] as String,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory JokeFiltersModel.fromJson(String source) =>
      JokeFiltersModel.fromMap(json.decode(source) as Map<String, dynamic>);

  /// Initial constructor for when user opens filters for the first time
  factory JokeFiltersModel.initial() {
    return JokeFiltersModel(author: "");
  }
}
