// ignore_for_file: public_member_api_docs, sort_constructors_first

/// Filters for the joke selection
abstract class JokeFilters {
  String author;
  JokeFilters({
    required this.author,
  });

  Map<String, dynamic> toMap();

  String toJson();
}
