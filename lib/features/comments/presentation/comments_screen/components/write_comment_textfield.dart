import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/write_comment_cubit/write_comment_cubit.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WriteCommentTextField extends StatefulWidget {
  const WriteCommentTextField({
    super.key,
  });

  @override
  State<WriteCommentTextField> createState() => _WriteCommentTextFieldState();
}

class _WriteCommentTextFieldState extends State<WriteCommentTextField> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<WriteCommentCubit>(),
      child: SizedBox(
        height: 80,
        child: Builder(builder: (context) {
          return TextField(
            maxLines: null,
            style: josefin.s16.withColor(
              AppColors.plainWhite,
            ),
            decoration: InputDecoration(
              labelStyle: josefin.s16.withColor(
                AppColors.darkerGrey,
              ),
              labelText: "Write your comment...",
              suffixIcon: GestureDetector(
                onTap: () => context.read<WriteCommentCubit>().postComment(
                      controller.value.text,
                    ),
                child: const Icon(
                  Icons.send,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  5,
                ),
                borderSide: const BorderSide(
                  color: AppColors.darkerGrey,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  5,
                ),
                borderSide: const BorderSide(
                  color: AppColors.highlightedViolet,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
