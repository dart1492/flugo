import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';

/// Clickable text that navigates to the sigh up page
class SignUpNavigationText extends StatelessWidget {
  /// Clickable text that navigates to the sigh up page
  const SignUpNavigationText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: AppColors.darkerGrey,
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        context.router.replace(const SignUpRoute());
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: RichText(
          text: TextSpan(
            text: "Do not have an account? ",
            style: josefin.s16.withColor(AppColors.grey),
            children: [
              TextSpan(
                text: "sign up",
                style: josefin.s16.copyWith(
                  decoration: TextDecoration.underline,
                  color: AppColors.highlightedViolet,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
