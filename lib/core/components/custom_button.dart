import 'package:flutter/material.dart';

/// Custom button, used throughout this.
/// This button will take all available width
///

class CustomButton extends StatelessWidget {
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

  /// Color of the background and border, defaults to the AppColors.lightBlue
  final Color? color;

  /// Border radius of the button, defaults to CBorderRadius.all5,
  final BorderRadius? borderRadius;

  /// Border of the button - defaults to the blue colored one with width=3
  final Border? border;

  /// Gradient color of the button
  final Gradient? gradient;

  /// Custom button, used throughout this app
  const CustomButton(
      {super.key,
      required this.child,
      this.padding,
      this.width,
      this.height,
      this.childAlignment,
      this.onTap,
      this.color,
      this.borderRadius,
      this.border,
      this.gradient});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: color,
      highlightColor: color,
      splashColor: color,
      borderRadius: borderRadius ?? BorderRadius.circular(6),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          gradient: gradient,
          color: color,
          borderRadius: borderRadius ?? BorderRadius.circular(6),
          border: border,
        ),
        width: width,
        height: height,
        padding: padding,
        child: Container(
          alignment: childAlignment ?? Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
