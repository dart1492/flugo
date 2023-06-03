import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/awards/awards_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Section with available awards
class AwardsSection extends StatelessWidget {
  /// Section with available awards
  const AwardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Awards 🏆",
              style: josefin.s20.withColor(
                AppColors.plainWhite,
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Text(
              "0", // TODO: REPLACE WITH REAL NUMBER FROM CUBIT
              style: josefin.s20.withColor(
                AppColors.plainWhite,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Icon(
                FeatherIcons.heart,
                color: AppColors.highlightedViolet,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const AwardsList(),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
