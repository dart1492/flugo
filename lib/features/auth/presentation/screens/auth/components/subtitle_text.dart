import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
      child: GradientText(
        "Laugh with us",
        style: josefin.s32.w700.withColor(AppColors.highlightedViolet),
        colors: const [
          Color(0xFF8E2DE2),
          Color(0xFF4A00E0),
        ],
      ),
    );
  }
}
