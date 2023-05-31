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
      margin: const EdgeInsets.only(top: 30),
      child: Text(
        "Flugo",
        style: josefin.s96.w700.withColor(AppColors.highlightedViolet),
        textAlign: TextAlign.center,
      ),
    );
  }
}
