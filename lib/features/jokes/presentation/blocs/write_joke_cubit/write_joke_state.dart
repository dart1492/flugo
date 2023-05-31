// ignore_for_file: public_member_api_docs, sort_constructors_first

class WriteJokeState {}

class WriteJokeInitialState extends WriteJokeState {
  String title;
  String content;
  bool isTitleValidated;
  bool isContentValidated;

  WriteJokeInitialState({
    required this.title,
    required this.content,
    required this.isTitleValidated,
    required this.isContentValidated,
  });

  WriteJokeState copyWith(
      {String? title,
      String? content,
      bool? isTitleValidated,
      bool? isContentValidated}) {
    return WriteJokeInitialState(
      title: title ?? this.title,
      content: content ?? this.content,
      isContentValidated: isContentValidated ?? this.isContentValidated,
      isTitleValidated: isTitleValidated ?? this.isTitleValidated,
    );
  }
}

class FailedPostState extends WriteJokeState {
  String errorMessage;
  FailedPostState({
    required this.errorMessage,
  });
}

class PostingJoke extends WriteJokeState {}

class SuccessPostState extends WriteJokeState {
  String successMessage;
  SuccessPostState({
    required this.successMessage,
  });
}
