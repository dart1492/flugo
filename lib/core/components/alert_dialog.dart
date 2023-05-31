import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String message;
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
