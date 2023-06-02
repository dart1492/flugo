import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Rounded appbar widget
/// If leading is not passed - sets back icon that calls router and does router.pop()
class RoundedAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Text, displayed to the right of the back_arrow icon
  final String? titleText;

  /// Leading widget, default - arrow-back icon with router.pop() callback onTap
  final Widget? leading;

  /// Rounded appbar widget
  const RoundedAppBar({
    super.key,
    this.titleText,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          titleText ?? "",
          style: josefin.s20.copyWith(
            color: AppColors.plainWhite,
          ),
        ),
      ),
      titleSpacing: 0.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(60),
        ),
      ),
      backgroundColor: AppColors.lightBlue,
      leading: leading ??
          GestureDetector(
            onTap: () {
              context.router.pop();
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Icon(
                FeatherIcons.chevronLeft,
                color: AppColors.highlightedViolet,
              ),
            ),
          ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
