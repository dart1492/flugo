import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';

///Subtitle text
class SubtitleText extends StatelessWidget {
  ///Subtitle text
  const SubtitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => const LinearGradient(
          colors: [
            Color(0xFF8E2DE2),
            Color(0xFF4A00E0),
          ],
        ).createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: Text(
          "Laugh with us",
          style: josefin.s32.w700.withColor(AppColors.highlightedViolet),
        ),
      ),
    );
  }
}
