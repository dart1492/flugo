// ignore_for_file: public_member_api_docs

import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';

/// Popup menu button for comment actions
class CommentActionsPopupMenuButton extends StatelessWidget {
  /// Popup menu button for comment actions
  const CommentActionsPopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        useMaterial3: true,
        highlightColor: AppColors.darkerGrey,
      ),
      child: CustomPopupMenu(
        barrierColor: Colors.transparent,
        menuBuilder: () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5,
            ),
            color: AppColors.lightBlue,
          ),
          width: 100,
          child: const Column(
            children: [
              DialogOption(
                icon: Icon(
                  Icons.share,
                  size: 20,
                  color: AppColors.highlightedViolet,
                ),
                text: "Share",
              ),
              SizedBox(
                height: 5,
              ),
              DialogOption(
                icon: Icon(
                  Icons.delete,
                  size: 20,
                  color: AppColors.highlightedRed,
                ),
                text: "Delete",
              ),
            ],
          ),
        ),
        pressType: PressType.singleClick,
        child: const Icon(
          Icons.more_horiz,
          color: AppColors.highlightedViolet,
        ),
      ),
    );
  }
}

/// Option for the comment action
class DialogOption extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Icon icon;

  /// Option for the comment action
  const DialogOption({
    super.key,
    this.onTap,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        highlightColor: AppColors.darkerGrey,
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          child: Row(
            children: [
              Text(
                text,
                style: josefin.s16.withColor(
                  AppColors.plainWhite,
                ),
              ),
              const Expanded(child: SizedBox()),
              icon
            ],
          ),
        ),
      ),
    );
  }
}
