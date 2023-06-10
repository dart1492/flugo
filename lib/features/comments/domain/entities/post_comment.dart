// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class PostComment {
  int jokeId;
  String text;
  PostComment({
    required this.text,
    required this.jokeId,
  });

  Map<String, dynamic> toMap();
}
