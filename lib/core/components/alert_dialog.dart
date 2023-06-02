import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// Custom alert dialog for displaying some errors that require actions
class CustomAlertDialog extends StatelessWidget {
  /// Message of the dialog
  final String message;

  /// Custom alert dialog for displaying some errors that require actions
  const CustomAlertDialog({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.darkBlue,
      title: Container(
        alignment: Alignment.center,
        child: Text(message),
      ),
    );
  }
}
