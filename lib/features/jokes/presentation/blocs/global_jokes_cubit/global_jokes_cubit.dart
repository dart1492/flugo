import 'package:flugo_mobile/features/jokes/domain/entities/joke_filters.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/paginated_indices.dart';
import 'package:flugo_mobile/features/jokes/domain/repositories/jokes_repository.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/global_jokes_cubit/global_jokes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The cubit is responsible for retrieving jokes from the server and holding pagination indices,
/// Filters for the jokes list we inject in related methods from another cubit.
/// And query text we will get from yet another cubit that manages query textfield
class GlobalJokesCubit extends Cubit<GlobalJokesState> {
  static const int paginationSize = 5;

  final JokesRepository repository;
  GlobalJokesCubit(this.repository)
      : super(
          InitialGlobalJokesState(
            page: PaginatedIndices(
              firstIndex: 0,
              lastIndex: 0 + paginationSize,
            ),
          ),
        );

  /// Method to get more jokes from the server
  void getJokes(JokeFilters filters, String queryText) async {
    // perform operation only if jokes are not loading and there is no error
    if (state is InitialGlobalJokesState) {
      PaginatedIndices prevIndices = (state as InitialGlobalJokesState).page;
      emit(LoadingGlobalJokesState());
      final getResult = await repository.getJokes(
        prevIndices,
        filters,
        queryText,
      );
      getResult.fold(
        (l) => emit(
          ErrorGlobalJokesState(),
        ),
        (r) {
          final PaginatedIndices newIndices = PaginatedIndices(
            firstIndex: prevIndices.lastIndex,
            lastIndex: prevIndices.lastIndex + paginationSize,
          );
          emit(
            LoadedGlobalJokesState(
              page: newIndices,
              jokes: r,
            ),
          );
        },
      );
    }
  }
}
