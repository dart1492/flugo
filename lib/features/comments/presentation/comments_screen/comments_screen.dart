import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/components/rounded_appbar.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/util/custom_scroll_behavior.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/comments_cubit/comments_cubit.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/comments_cubit/comments_state.dart';
import 'package:flugo_mobile/features/comments/presentation/comments_screen/components/comment_widget.dart';
import 'package:flugo_mobile/features/comments/presentation/comments_screen/components/write_comment_textfield.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()

/// Screen with the list of comments to the joke and a textfield to add new one
class CommentsScreen extends StatelessWidget {
  /// Joke Id to get comments by
  final int jokeId;

  /// Screen with the list of comments to the joke
  const CommentsScreen({
    super.key,
    required this.jokeId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CommentsCubit>()..getComments(jokeId),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: const RoundedAppBar(
            titleText: "Comments",
          ),
          backgroundColor: AppColors.darkBlue,
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Column(
              children: [
                BlocBuilder<CommentsCubit, CommentsState>(
                  builder: (context, state) {
                    if (state is LoadedCommentsState) {
                      return ScrollConfiguration(
                        behavior: CustomBehavior(),
                        child: Expanded(
                          flex: 8,
                          child: ListView.builder(
                            itemCount: state.comments.length,
                            itemBuilder: (context, index) {
                              return CommentWidget(
                                comment: state.comments[index],
                              );
                            },
                          ),
                        ),
                      );
                    }

                    return const SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                WriteCommentTextField(
                  jokeId: jokeId,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
