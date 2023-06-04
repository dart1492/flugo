import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
      child: GradientText(
        "Flugo",
        style: josefin.s96.w700.withColor(
          const Color(
            0xFF4A00E0,
          ),
        ),
        colors: const [
          Color(0xFF8E2DE2),
          Color(0xFF4A00E0),
        ],
        textAlign: TextAlign.center,
      ),
    );
  }
}
