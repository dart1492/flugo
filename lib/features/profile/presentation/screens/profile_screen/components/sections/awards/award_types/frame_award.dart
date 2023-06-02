import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/awards/award_types/award_type.dart';
import 'package:flutter/material.dart';

class FrameAward extends AwardType {
  FrameAward(String frameAssetName)
      : super(
          content: Image.asset(
            frameAssetName,
            height: 70,
            width: 70,
          ),
          type: "Frame",
        );
}
