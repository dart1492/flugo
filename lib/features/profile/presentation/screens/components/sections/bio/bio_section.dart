import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/profile/presentation/screens/components/sections/bio/bio_text_field.dart';
import 'package:flutter/material.dart';

class BioSection extends StatelessWidget {
  const BioSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bio 🧾",
          style: josefin.s20.withColor(
            AppColors.plainWhite,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BioTextField(),
      ],
    );
  }
}
