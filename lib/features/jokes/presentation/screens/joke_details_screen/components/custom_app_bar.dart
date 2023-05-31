import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: const Color.fromARGB(136, 115, 97, 255),
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                context.router.pop();
              },
              child: Ink(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.highlightedViolet),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.fromLTRB(5, 5, 7, 5),
                child: const Icon(
                  FeatherIcons.chevronLeft,
                  color: AppColors.highlightedViolet,
                  size: 20,
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Text(
            "dart",
            style: josefin.s24.withColor(
              AppColors.plainWhite,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/user_stock_icon.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
