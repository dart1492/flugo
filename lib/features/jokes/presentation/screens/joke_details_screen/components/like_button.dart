import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Like joke button
class LikeButton extends StatelessWidget {
  /// Like joke button
  const LikeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: IntrinsicWidth(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                "Like",
                style: josefin.s20.withColor(AppColors.plainWhite),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              FeatherIcons.heart,
              size: 20,
              color: AppColors.plainWhite,
            ),
          ],
        ),
      ),
    );
  }
}
