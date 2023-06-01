import 'package:bot_toast/bot_toast.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/comments/domain/entities/get_comment.dart';
import 'package:flugo_mobile/features/comments/presentation/comments_screen/components/comment_actions_dialog.dart';
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
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),
      child: Column(
        children: [
          Text(
            "Here is my exceptionally long comment for you",
            style: josefin.s16.withColor(
              AppColors.plainWhite,
            ),
          ),
          Row(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: () => BotToast.showAttachedWidget(
                  target: Offset(
                    MediaQuery.of(context).size.width / 2,
                    MediaQuery.of(context).size.height - 100,
                  ),
                  attachedBuilder: (cancelFunc) {
                    return const CommentActionDialog();
                  },
                  animationDuration: const Duration(
                    milliseconds: 300,
                  ),
                ),
                child: const Icon(
                  Icons.more_horiz,
                  color: AppColors.plainWhite,
                ),
              ),
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
