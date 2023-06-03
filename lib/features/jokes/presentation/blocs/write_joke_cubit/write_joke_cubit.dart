import 'package:flugo_mobile/features/jokes/domain/entities/post_joke.dart';
import 'package:flugo_mobile/features/jokes/domain/repositories/jokes_repository.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/write_joke_cubit/write_joke_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Cubit responsible for holding states of write joke text fields and posting a joke
class WriteJokeCubit extends Cubit<WriteJokeState> {
  /// Associated repository
  final JokesRepository repo;

  /// Cubit responsible for holding states of write joke text fields and posting a joke
  WriteJokeCubit(this.repo)
      : super(
          WriteJokeInitialState(
            title: '',
            content: '',
            isTitleValidated: true,
            isContentValidated: true,
          ),
        );

  /// Post joke, gathering text values from current state
  void postJoke() async {
    final currentState = state as WriteJokeInitialState;

    if (currentState.title.isNotEmpty && currentState.content.isNotEmpty) {
      var res = await repo.addJoke(
        PostJoke(
          title: currentState.title,
          content: currentState.content,
        ),
      );

      res.fold(
        (l) {
          emit(FailedPostState(errorMessage: l.errorMessage));
          emit(
            WriteJokeInitialState(
              title: currentState.title,
              content: currentState.content,
              isTitleValidated: true,
              isContentValidated: true,
            ),
          );
        },
        (r) {
          emit(
            SuccessPostState(successMessage: "Posted!"),
          );
          emit(
            WriteJokeInitialState(
              title: '',
              content: '',
              isTitleValidated: true,
              isContentValidated: true,
            ),
          );
        },
      );
    } else {
      emit(
        currentState.copyWith(
          isContentValidated: currentState.content.isNotEmpty,
          isTitleValidated: currentState.title.isNotEmpty,
        ),
      );
    }
  }

  /// reset field validation
  void resetFields() {
    if (state is WriteJokeInitialState) {
      emit(
        (state as WriteJokeInitialState)
            .copyWith(isContentValidated: true, isTitleValidated: true),
      );
    }
  }

  /// Update title text
  void updateTitle(String title) {
    if (state is WriteJokeInitialState) {
      final currentState = state as WriteJokeInitialState;
      emit(currentState.copyWith(title: title));
    }
  }

  /// Update content text
  void updateContent(String content) {
    if (state is WriteJokeInitialState) {
      final currentState = state as WriteJokeInitialState;
      emit(currentState.copyWith(content: content));
    }
  }
}
