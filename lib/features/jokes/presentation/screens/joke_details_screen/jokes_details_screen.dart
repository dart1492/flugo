import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/components/custom_highlighted_button.dart';
import 'package:flugo_mobile/core/components/rounded_appbar.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/util/custom_scroll_behavior.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';
import 'package:flugo_mobile/features/jokes/presentation/screens/joke_details_screen/components/like_button.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Screen with full joke's title + text
class JokesDetailsScreen extends StatelessWidget {
  /// represented entity
  final GetJoke joke;

  /// Screen with full joke's title + text
  const JokesDetailsScreen({
    super.key,
    required this.joke,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const RoundedAppBar(),
        backgroundColor: AppColors.darkBlue,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 10,
          ),
          child: Column(
            children: [
              Expanded(
                child: ScrollConfiguration(
                  behavior: CustomBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              joke.title,
                              style: josefin.s32.withColor(
                                AppColors.plainWhite,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: double.infinity,
                              height: 2,
                              decoration: const BoxDecoration(
                                color: AppColors.highlightedViolet,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              joke.text,
                              // textAlign: TextAlign.justify,
                              style: josefin.s24.h13.withColor(
                                AppColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LikeButton(),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomHighlightedButton(
                      child: Text(
                        "Comment",
                        style: josefin.s20.withColor(
                          AppColors.plainWhite,
                        ),
                      ),
                      onTap: () {
                        context.router.push(
                          CommentsRoute(
                            // TODO REPLACE WITH ID
                            jokeId: joke.id,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
