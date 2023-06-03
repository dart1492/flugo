import 'package:flugo_mobile/core/components/custom_button.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Section with personal actions for the user
class PersonalSection extends StatelessWidget {
  /// Section with personal actions for the user
  const PersonalSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personal 🔑",
          style: josefin.s20.withColor(
            AppColors.plainWhite,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 110,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.lightRed,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: AppColors.lightRed.withOpacity(0.5),
                border: Border.all(
                  color: AppColors.lightRed,
                ),
                onTap: () => context.read<AuthCubit>().eraseToken(),
                child: Text(
                  "Log out",
                  style: josefin.s16.withColor(
                    AppColors.plainWhite,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                color: AppColors.lightRed.withOpacity(0.5),
                border: Border.all(
                  color: AppColors.lightRed,
                ),
                onTap: () => context.read<AuthCubit>().eraseToken(),
                child: Text(
                  "Change username",
                  style: josefin.s16.withColor(
                    AppColors.plainWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
