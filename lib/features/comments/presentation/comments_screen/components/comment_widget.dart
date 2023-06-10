import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';
import 'package:flugo_mobile/features/comments/presentation/comments_screen/components/comment_actions_popup_menu_button.dart';
import 'package:flutter/material.dart';

/// Comment widget
class CommentWidget extends StatelessWidget {
  /// Represented entity
  final GetComment comment;

  /// Comment widget
  const CommentWidget({
    super.key,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            comment.text,
            style: josefin.s16.withColor(
              AppColors.plainWhite,
            ),
          ),
          const Row(
            children: [
              Expanded(
                child: SizedBox(),
              ),
              CommentActionsPopupMenuButton(),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 1,
            color: AppColors.lightBlue,
          ),
        ],
      ),
    );
  }
}
