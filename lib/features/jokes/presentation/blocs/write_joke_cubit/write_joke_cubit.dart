import 'package:flugo_mobile/features/jokes/domain/entities/post_joke.dart';
import 'package:flugo_mobile/features/jokes/domain/repositories/jokes_repository.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/write_joke_cubit/write_joke_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WriteJokeCubit extends Cubit<WriteJokeState> {
  final JokesRepository repo;

  WriteJokeCubit(this.repo)
      : super(
          WriteJokeInitialState(
            title: '',
            content: '',
            isTitleValidated: true,
            isContentValidated: true,
          ),
        );

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

  void resetFields() {
    if (state is WriteJokeInitialState) {
      emit(
        (state as WriteJokeInitialState)
            .copyWith(isContentValidated: true, isTitleValidated: true),
      );
    }
  }

  void updateTitle(String title) {
    if (state is WriteJokeInitialState) {
      final currentState = state as WriteJokeInitialState;
      emit(currentState.copyWith(title: title));
    }
  }

  void updateContent(String content) {
    if (state is WriteJokeInitialState) {
      final currentState = state as WriteJokeInitialState;
      emit(currentState.copyWith(content: content));
    }
  }
}
