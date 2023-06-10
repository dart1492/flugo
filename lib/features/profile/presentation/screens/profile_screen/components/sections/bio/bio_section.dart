import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/profile/presentation/blocs/profile_cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Section with user's bio
class BioSection extends StatefulWidget {
  /// Text of the user's bio, prior to any changes
  final String bioText;

  /// Section with user's bio
  const BioSection({
    super.key,
    required this.bioText,
  });

  @override
  State<BioSection> createState() => _BioSectionState();
}

class _BioSectionState extends State<BioSection> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.bioText;
    super.initState();
  }

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
        SizedBox(
          child: CustomTextField(
            controller: controller,
            maxLines: 4,
            onChanged: (p0) => context.read<ProfileCubit>().updateBio(p0),
          ),
        ),
      ],
    );
  }
}
