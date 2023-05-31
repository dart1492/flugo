// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flugo_mobile/features/jokes/domain/entities/joke_filters.dart';

class JokeFiltersState {}

class LoadingJokeFiltersState extends JokeFiltersState {}

class LoadedJokeFiltersState extends JokeFiltersState {
  JokeFilters filters;
  LoadedJokeFiltersState({
    required this.filters,
  });

  LoadedJokeFiltersState copyWith({
    JokeFilters? filters,
  }) {
    return LoadedJokeFiltersState(
      filters: filters ?? this.filters,
    );
  }
}

class ErrorJokeFiltersState extends JokeFiltersState {}
