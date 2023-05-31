// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/paginated_indices.dart';

class GlobalJokesState {}

class InitialGlobalJokesState extends GlobalJokesState {
  PaginatedIndices page;
  InitialGlobalJokesState({
    required this.page,
  });
}

class LoadingGlobalJokesState extends GlobalJokesState {}

class LoadedGlobalJokesState extends InitialGlobalJokesState {
  List<GetJoke> jokes;
  LoadedGlobalJokesState({
    required super.page,
    required this.jokes,
  });
}

class ErrorGlobalJokesState extends GlobalJokesState {}
