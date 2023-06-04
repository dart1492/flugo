import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// More-horiz material icon with custom colors
class CustomMoreHorizIcon extends StatelessWidget {
  /// Size of each dot in the icon
  final double size;

  /// More-horiz material icon with custom colors
  const CustomMoreHorizIcon({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: size,
          width: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightGreen,
          ),
        ),
        SizedBox(
          width: size - size / 2,
        ),
        Container(
          height: size,
          width: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.highlightedViolet,
          ),
        ),
        SizedBox(
          width: size - size / 2,
        ),
        Container(
          height: size,
          width: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.highlightedRed,
          ),
        )
      ],
    );
  }
}
