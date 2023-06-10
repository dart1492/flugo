/// This entity gets used when user creates his joke and posts it.
// ignore_for_file: public_member_api_docs

abstract class PostJoke {
  String title;
  String text;

  PostJoke({
    required this.title,
    required this.text,
  });

  Map<String, dynamic> toMap();
}
