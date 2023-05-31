import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/components/sections/awards/award_types/award_type.dart';
import 'package:flutter/material.dart';

/// Represents title award
class TitleAward extends AwardType {
  TitleAward({
    required String titleText,
    required Color titleTextColor,
  }) : super(
          content: Text(
            titleText,
            style: josefin.s24.withColor(
              titleTextColor,
            ),
          ),
          type: "Title",
        );
}
