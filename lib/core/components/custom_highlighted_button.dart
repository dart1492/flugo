import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// Custom button, used throughout this.
/// This button will take all available width
///

class CustomHighlightedButton extends StatelessWidget {
  /// Child that will be displayed in the center of this button
  final Widget child;

  /// Padding, applied to the child
  final EdgeInsets? padding;

  /// Width of the button. If null - double.infinity
  final double? width;

  /// height of the button. if null - zero
  final double? height;

  /// Alignment of the child widget
  final Alignment? childAlignment;

  /// On tap callback
  final void Function()? onTap;

  /// Custom button, used throughout this app
  const CustomHighlightedButton({
    super.key,
    required this.child,
    this.padding,
    this.width,
    this.height,
    this.childAlignment,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: AppColors.highlightedViolet,
      splashColor: AppColors.highlightedViolet,
      borderRadius: BorderRadius.circular(6),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.highlightedViolet.withOpacity(0.2),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: AppColors.highlightedViolet,
          ),
        ),
        width: width ?? double.infinity,
        height: height,
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
        child: Container(
            alignment: childAlignment ?? Alignment.center, child: child),
      ),
    );
  }
}
