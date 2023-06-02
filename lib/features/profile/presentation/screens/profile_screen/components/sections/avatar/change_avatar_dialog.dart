import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/components/custom_button.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class ChangeAvatarDialog extends StatelessWidget {
  const ChangeAvatarDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(useMaterial3: true),
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: AppColors.lightBlue,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Avatar actions",
              style: josefin.s20.withColor(
                AppColors.plainWhite,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              childAlignment: Alignment.center,
              width: 140,
              color: AppColors.highlightedViolet.withOpacity(
                0.2,
              ),
              border: Border.all(color: AppColors.highlightedViolet),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                "Change avatar",
                style: josefin.s16.withColor(
                  AppColors.plainWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              childAlignment: Alignment.center,
              width: 140,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              color: AppColors.highlightedViolet.withOpacity(0.2),
              border: Border.all(color: AppColors.highlightedViolet),
              onTap: () {
                Navigator.pop(context);
                context.router.push(
                  const FramesRoute(),
                );
              },
              child: Text(
                "Change frame",
                style: josefin.s16.withColor(
                  AppColors.plainWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
