import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/jokes/data/models/get_joke_model.dart';
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
    final result = await dio.get(
      "/jokes",
      queryParameters: {
        "limit": 5,
        "offset": 0,
        'order_by': "created_at",
      },
    );

    final dynamicList = result.data as List<dynamic>;
    final List<GetJoke> resultList = [];
    for (int i = 0; i < dynamicList.length; i++) {
      resultList.add(
        GetJokeModel.fromMap(
          dynamicList[i],
        ),
      );
    }
    return resultList;
  }

  @override
  Future<void> addJoke(PostJoke joke) async {
    await dio.post("/me/jokes", data: joke.toMap());
  }
}
