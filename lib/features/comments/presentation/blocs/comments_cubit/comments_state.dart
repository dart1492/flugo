// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';

class CommentsState {
  int listOffset;
  CommentsState({
    required this.listOffset,
  });
}

class LoadingCommentsState extends CommentsState {
  LoadingCommentsState({required super.listOffset});
}

class LoadedCommentsState extends CommentsState {
  final List<GetComment> comments;

  LoadedCommentsState({
    required this.comments,
    required super.listOffset,
  });
}

class ErrorCommentsState extends CommentsState {
  ErrorCommentsState({required super.listOffset});
}
