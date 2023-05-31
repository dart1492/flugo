// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';

class CommentsState {}

class LoadingCommentsState extends CommentsState {}

class LoadedCommentsState extends CommentsState {
  final List<GetComment> comments;
  LoadedCommentsState({
    required this.comments,
  });
}

class ErrorCommentsState extends CommentsState {}
