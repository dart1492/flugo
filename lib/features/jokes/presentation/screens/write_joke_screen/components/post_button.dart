import 'package:flugo_mobile/core/components/custom_button.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/write_joke_cubit/write_joke_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostButton extends StatelessWidget {
  const PostButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: double.infinity,
      childAlignment: Alignment.center,
      color: const Color.fromARGB(91, 115, 97, 255),
      border: Border.all(color: AppColors.highlightedViolet),
      onTap: () {
        context.read<WriteJokeCubit>().postJoke();
      },
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 2,
        ),
        child: Text(
          "Post",
          style: josefin.s24.withColor(AppColors.plainWhite),
        ),
      ),
    );
  }
}
