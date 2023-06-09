import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Error box - usually used to indicate validation errors
class ErrorBox extends StatelessWidget {
  /// Displayed error text
  final String errorText;

  /// is shown or not
  final bool isShown;

  /// Error box - usually used to indicate validation errors
  const ErrorBox({
    super.key,
    required this.errorText,
    required this.isShown,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.centerLeft,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: !isShown
            ? Row(
                children: [
                  const Icon(
                    FeatherIcons.alertTriangle,
                    size: 19,
                    color: AppColors.highlightedRed,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      errorText,
                      style: josefin.s16.withColor(
                        AppColors.highlightedRed,
                      ),
                    ),
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
