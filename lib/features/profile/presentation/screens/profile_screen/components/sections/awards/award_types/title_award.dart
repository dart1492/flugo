import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen/components/sections/awards/award_types/award_type.dart';
import 'package:flutter/material.dart';

/// Represents title award - where content is text widget
class TitleAward extends AwardType {
  /// Represents title award
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
