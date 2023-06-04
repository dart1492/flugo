import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/images/frame_names.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/awards/award_tile.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/awards/award_types/frame_award.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/awards/award_types/title_award.dart';
import 'package:flutter/material.dart';

/// List with award tiles
class AwardsList extends StatelessWidget {
  /// List with award tiles
  const AwardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          AwardTile(
            isUnlocked: false,
            numberLikesRequired: 5,
            awardType: TitleAward(
              titleText: '"Joker"',
              titleTextColor: AppColors.highlightedViolet,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          AwardTile(
            isUnlocked: false,
            numberLikesRequired: 10,
            awardType: FrameAward(
              AvatarFrameNames.crownFrame,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          AwardTile(
            isUnlocked: false,
            numberLikesRequired: 15,
            awardType: FrameAward(
              AvatarFrameNames.beardFrame,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          AwardTile(
            isUnlocked: false,
            numberLikesRequired: 25,
            awardType: FrameAward(
              AvatarFrameNames.crownFrame,
            ),
          ),
        ],
      ),
    );
  }
}
