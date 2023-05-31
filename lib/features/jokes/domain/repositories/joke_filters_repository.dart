// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flugo_mobile/core/errors/repository_request_handler.dart';
import 'package:flugo_mobile/core/helper/typedefs.dart';
import 'package:flugo_mobile/features/jokes/data/joke_filters_datasource.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/joke_filters.dart';

// TODO: CREATE DATASOURCE FOR JOKE FILTERS
class JokeFiltersRepository {
  JokeFiltersDatasource datasource;
  JokeFiltersRepository({
    required this.datasource,
  });

  //TODO: THINK OF SOME ERRORS WRAPPER FOR SYNCHRONOUS OPERATIONS
  JokeFilters getFilters() {
    return datasource.getFilters();
  }

  FutureFailable<void> setFilters(JokeFilters filters) {
    return RepositoryRequestHandler()(
      request: () => datasource.setFilters(filters),
    );
  }
}
