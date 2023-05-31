import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/image_names.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/components/sections/awards/award_types/award_type.dart';
import 'package:flutter/material.dart';

class AwardTile extends StatelessWidget {
  const AwardTile({
    super.key,
    required this.numberLikesRequired,
    required this.awardType,
    required this.isUnlocked,
  });

  final int numberLikesRequired;
  final AwardType awardType;
  final bool isUnlocked;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                borderRadius: BorderRadius.circular(
                  5,
                ),
                border: Border.all(
                  color: AppColors.highlightedViolet,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                alignment: Alignment.center,
                child: Builder(
                  builder: (context) {
                    if (isUnlocked) {
                      return awardType.content;
                    } else {
                      return const Icon(
                        Icons.question_mark_sharp,
                        size: 35,
                        color: AppColors.highlightedViolet,
                      );
                    }
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 0.1,
              child: SizedBox(
                height: 50,
                width: 150,
                child: Stack(
                  children: [
                    Image.asset(
                      ImageNames.awardGlyph,
                      height: 50,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                        ),
                        child: Text(
                          numberLikesRequired.toString(),
                          style: josefin.s20.withColor(AppColors.plainWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                decoration: BoxDecoration(
                  color: AppColors.highlightedViolet.withOpacity(0.2),
                  border: Border.all(
                    color: AppColors.highlightedViolet,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  awardType.type,
                  style: josefin.s16.withColor(
                    AppColors.plainWhite,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
