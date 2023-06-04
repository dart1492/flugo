import 'package:flugo_mobile/core/components/custom_highlighted_button.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/jokes/presentation/blocs/write_joke_cubit/write_joke_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Post joke button
class PostButton extends StatelessWidget {
  /// Post joke button
  const PostButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomHighlightedButton(
      onTap: () {
        context.read<WriteJokeCubit>().postJoke();
      },
      child: Text(
        "Post",
        style: josefin.s24.withColor(
          AppColors.plainWhite,
        ),
      ),
    );
  }
}
