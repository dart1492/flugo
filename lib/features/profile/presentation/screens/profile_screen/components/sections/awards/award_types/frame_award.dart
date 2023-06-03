import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/awards/award_types/award_type.dart';
import 'package:flutter/material.dart';

/// Represents frame award - where content is image
class FrameAward extends AwardType {
  /// Represents frame award - where content is image
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
