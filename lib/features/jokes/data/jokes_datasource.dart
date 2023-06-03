import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/joke_filters.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/paginated_indices.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/post_joke.dart';

/// Jokes datasource class - defines operations for jokes
abstract class JokesDatasource {
  /// Get jokes
  Future<List<GetJoke>> getJokes(
    PaginatedIndices page,
    JokeFilters filters,
    String queryText,
  );

  /// Add joke
  Future<void> addJoke(PostJoke joke);
}

/// Joke datasource implementation with dio
class JokesDatasourceImpl extends JokesDatasource {
  /// Dio object
  Dio dio;

  /// Joke datasource implementation with dio
  JokesDatasourceImpl(this.dio);
  @override
  Future<List<GetJoke>> getJokes(
    PaginatedIndices page,
    JokeFilters filters,
    String queryText,
  ) async {
    // TODO: Implement fetching jokes from the server
    return [
      GetJoke(
        title: "title",
        content: "content\n\n\n\n\n\n\n\nn\n\\n\n\nn\n\n\n\n\n\n\n\n\n\nasdasd",
        author: "author",
        likesNumber: 5,
        sharesNumber: 5,
      ),
    ];
  }

  @override
  Future<void> addJoke(PostJoke joke) async {
    // TODO: Implement adding jokes jokes from the server
    return;
  }
}
