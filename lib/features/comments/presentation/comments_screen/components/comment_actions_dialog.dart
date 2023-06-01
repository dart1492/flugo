import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class CommentActionDialog extends StatelessWidget {
  const CommentActionDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
        color: AppColors.lightBlue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialogOption(
            onTap: () {},
            icon: const Icon(
              Icons.share,
              size: 20,
              color: AppColors.highlightedViolet,
            ),
            text: "Share",
          ),
          const SizedBox(
            height: 5,
          ),
          DialogOption(
            onTap: () {},
            icon: const Icon(
              Icons.delete,
              size: 20,
              color: AppColors.highlightedRed,
            ),
            text: "Delete",
          ),
        ],
      ),
    );
  }
}

class DialogOption extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Icon icon;

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
        highlightColor: AppColors.darkerGrey,
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          child: Row(
            children: [
              Text(
                text,
                style: josefin.s20.withColor(
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
