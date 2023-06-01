import 'package:bot_toast/bot_toast.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/widgets.dart';

/// Each call to BotTOasts is made here - for dependency inversion (or whatever you call it).
class CustomBotToasts {
  static void showErrorToast({required String text}) {
    BotToast.showText(
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      align: const Alignment(0, -0.7),
      contentColor: AppColors.lightBlue,
      text: text,
      textStyle: josefin.s16.withColor(
        AppColors.lightRed,
      ),
    );
  }
}
