// ignore_for_file: public_member_api_docs, sort_constructors_first
class GetComment {
  int id;
  int jokeId;

  String text;
  String username;
  GetComment({
    required this.id,
    required this.jokeId,
    required this.text,
    required this.username,
  });

  factory GetComment.fromMap(Map<String, dynamic> map) {
    return GetComment(
      id: map['id'] as int,
      jokeId: map['jokeId'] as int,
      text: map['text'] as String,
      username: map['username'] as String,
    );
  }
}
