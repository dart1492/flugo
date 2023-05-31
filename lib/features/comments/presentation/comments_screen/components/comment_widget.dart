import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';
import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final GetComment comment;
  const CommentWidget({
    super.key,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.darkerGrey,
        ),
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),
      child: Text(
        comment.text,
        style: josefin.s16.withColor(
          AppColors.plainWhite,
        ),
      ),
    );
  }
}
