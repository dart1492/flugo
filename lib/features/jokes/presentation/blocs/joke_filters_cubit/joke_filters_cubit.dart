import 'package:bloc/bloc.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/joke_filters.dart';
import 'package:flugo_mobile/features/jokes/domain/repositories/joke_filters_repository.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/joke_filters_cubit/joke_filters_state.dart';

/// Cubit for managing joke filters state - to save those filters to local storage so that user could reuse them later
class JokeFiltersCubit extends Cubit<JokeFiltersState> {
  final JokeFiltersRepository repo;
  JokeFiltersCubit(this.repo) : super(JokeFiltersState());

  /// Get filters from the local storage
  JokeFilters getFilters() {
    emit(
      LoadedJokeFiltersState(
        filters: repo.getFilters(),
      ),
    );
    return repo.getFilters();
  }

  /// Set filters to the local storage
  void setFilters() async {
    if (state is LoadedJokeFiltersState) {
      final currentFilters = (state as LoadedJokeFiltersState).filters;
      emit(LoadingJokeFiltersState());
      final result = await repo.setFilters(currentFilters);
      result.fold(
        (l) => emit(
          ErrorJokeFiltersState(),
        ),
        (r) => emit(
          LoadedJokeFiltersState(
            filters: currentFilters,
          ),
        ),
      );
    }
  }
}
