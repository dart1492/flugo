import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';

/// Title text widget with gradient and shadow
class TitleText extends StatelessWidget {
  /// Constructor
  const TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
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
          "Flugo",
          style: josefin.s96.w700.withColor(
            AppColors.highlightedViolet,
          ),
        ),
      ),
    );
  }
}
