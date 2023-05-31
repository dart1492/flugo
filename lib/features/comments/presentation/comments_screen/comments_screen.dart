import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/comments_cubit/comments_cubit.dart';
import 'package:flugo_mobile/features/comments/presentation/blocs/comments_cubit/comments_state.dart';
import 'package:flugo_mobile/features/comments/presentation/comments_screen/components/comment_widget.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

@RoutePage()
class CommentsScreen extends StatelessWidget {
  final int jokeId;
  const CommentsScreen({
    super.key,
    required this.jokeId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CommentsCubit>()..getComments(jokeId),
      child: Scaffold(
        appBar: _customAppBar(context),
        backgroundColor: AppColors.darkBlue,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: BlocBuilder<CommentsCubit, CommentsState>(
            builder: (context, state) {
              if (state is LoadedCommentsState) {
                return ListView.builder(
                  itemCount: state.comments.length,
                  itemBuilder: (context, index) {
                    return CommentWidget(
                      comment: state.comments[index],
                    );
                  },
                );
              }

              return const SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _customAppBar(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          "Comments",
          style: josefin.s20.copyWith(
            color: AppColors.plainWhite,
          ),
        ),
      ),
      titleSpacing: 0.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(60),
        ),
      ),
      backgroundColor: AppColors.lightBlue,
      leading: GestureDetector(
        onTap: () {
          context.router.pop();
        },
        child: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Icon(
            FeatherIcons.chevronLeft,
            color: AppColors.highlightedViolet,
          ),
        ),
      ),
    );
  }
}
