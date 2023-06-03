// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:flugo_mobile/features/jokes/domain/entities/paginated_indices.dart';

class PageModel extends PaginatedIndices {
  PageModel({required super.firstIndex, required super.lastIndex});

  PageModel copyWith({
    int? firstIndex,
    int? lastIndex,
  }) {
    return PageModel(
      firstIndex: firstIndex ?? this.firstIndex,
      lastIndex: lastIndex ?? this.lastIndex,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstIndex': firstIndex,
      'lastIndex': lastIndex,
    };
  }

  factory PageModel.fromMap(Map<String, dynamic> map) {
    return PageModel(
      firstIndex: map['firstIndex'] as int,
      lastIndex: map['lastIndex'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PageModel.fromJson(String source) => PageModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}
