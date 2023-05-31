import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/components/custom_button.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/util/custom_scroll_behavior.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';
import 'package:flugo_mobile/features/jokes/presentation/screens/joke_details_screen/components/like_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

@RoutePage()
class JokesDetailsScreen extends StatelessWidget {
  final GetJoke joke;
  const JokesDetailsScreen({
    super.key,
    required this.joke,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _customAppBar(context),
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
                              style:
                                  josefin.s36.withColor(AppColors.plainWhite),
                            ),
                            Container(
                              width: double.infinity,
                              height: 2,
                              decoration: const BoxDecoration(
                                  color: AppColors.highlightedViolet),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              joke.content,
                              textAlign: TextAlign.justify,
                              style: josefin.s24.h13.withColor(AppColors.grey),
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
                    CustomButton(
                      onTap: () {
                        context.router.push(
                          CommentsRoute(
                            // TODO REPLACE WITH ID
                            jokeId: 1,
                          ),
                        );
                      },
                      color: AppColors.highlightedViolet.withOpacity(0.5),
                      border: Border.all(
                        color: AppColors.highlightedViolet,
                      ),
                      width: double.infinity,
                      childAlignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Comment",
                        style: josefin.s20.withColor(
                          AppColors.plainWhite,
                        ),
                      ),
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

  AppBar _customAppBar(BuildContext context) {
    return AppBar(
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
      actions: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 40, 10),
          child: Row(
            children: [
              Text(
                "dart",
                style: josefin.s20.withColor(AppColors.plainWhite),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/user_stock_icon.jpg'),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
