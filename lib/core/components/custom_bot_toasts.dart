import 'package:bot_toast/bot_toast.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/widgets.dart';

class CustomBotToasts {
  static void showInfoToast({TextStyle? textStyle, required String text}) {
    BotToast.showText(
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      align: const Alignment(0, 0.7),
      contentColor: AppColors.lightBlue,
      text: text,
      textStyle: textStyle ??
          josefin.s20.withColor(
            AppColors.plainWhite,
          ),
    );
  }
}
