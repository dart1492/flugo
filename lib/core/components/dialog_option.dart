import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';

/// Option for the comment action
class DialogOption extends StatelessWidget {
  /// On tap action
  final void Function()? onTap;

  /// text content
  final String text;

  /// trailing icon
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
