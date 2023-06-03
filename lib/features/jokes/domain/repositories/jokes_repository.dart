import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/jokes/data/jokes_datasource.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/joke_filters.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/paginated_indices.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/post_joke.dart';

/// Repository for joke interactions
class JokesRepository {
  /// Associated datasource
  final JokesDatasource datasource;

  /// Repository for joke interactions
  JokesRepository(this.datasource);

  /// Get jokes from the datasource
  FutureFailable<List<GetJoke>> getJokes(
    PaginatedIndices page,
    JokeFilters filters,
    String queryText,
  ) {
    return RepositoryRequestHandler<List<GetJoke>>()(
      request: () => datasource.getJokes(
        page,
        filters,
        queryText,
      ),
    );
  }

  /// Add joke to the datasource
  FutureFailable<void> addJoke(PostJoke joke) {
    return RepositoryRequestHandler()(
      request: () => datasource.addJoke(joke),
    );
  }
}
