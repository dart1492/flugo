// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GetJoke {
  String title;
  String content;
  String author;
  int likesNumber;
  int sharesNumber;

  GetJoke({
    required this.title,
    required this.content,
    required this.author,
    required this.likesNumber,
    required this.sharesNumber,
  });

  GetJoke copyWith({
    String? title,
    String? content,
    String? author,
    int? likesNumber,
    int? sharesNumber,
  }) {
    return GetJoke(
      title: title ?? this.title,
      content: content ?? this.content,
      author: author ?? this.author,
      likesNumber: likesNumber ?? this.likesNumber,
      sharesNumber: sharesNumber ?? this.sharesNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'content': content,
      'author': author,
      'likesNumber': likesNumber,
      'sharesNumber': sharesNumber,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'GetJoke(title: $title, content: $content, author: $author, likesNumber: $likesNumber, sharesNumber: $sharesNumber)';
  }

  @override
  bool operator ==(covariant GetJoke other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.content == content &&
        other.author == author &&
        other.likesNumber == likesNumber &&
        other.sharesNumber == sharesNumber;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        content.hashCode ^
        author.hashCode ^
        likesNumber.hashCode ^
        sharesNumber.hashCode;
  }
}
