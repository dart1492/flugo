import 'package:auto_route/auto_route.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flugo_mobile/core/components/dialog_option.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Single element of the jokes list
class JokesListElement extends StatelessWidget {
  /// represented entity
  final GetJoke joke;

  /// Single element of the jokes list
  const JokesListElement({
    super.key,
    required this.joke,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      color: AppColors.darkBlue,
      child: Theme(
        data: ThemeData(
          highlightColor: const Color.fromARGB(159, 56, 54, 64),
          splashColor: Colors.transparent,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          tileColor: Colors.transparent,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            context.router.push(
              JokesDetailsRoute(joke: joke),
            );
          },
          trailing: SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  highlightColor: const Color.fromARGB(136, 115, 97, 255),
                  splashColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.highlightedViolet),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: const Icon(
                      FeatherIcons.heart,
                      color: AppColors.highlightedViolet,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomPopupMenu(
                  barrierColor: Colors.transparent,
                  menuBuilder: () {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 100,
                      child: const Column(
                        children: [
                          DialogOption(
                            icon: Icon(
                              Icons.share,
                              size: 20,
                              color: AppColors.highlightedViolet,
                            ),
                            text: "Share",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DialogOption(
                            icon: Icon(
                              Icons.edit,
                              size: 20,
                              color: AppColors.lightGreen,
                            ),
                            text: "Edit",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DialogOption(
                            icon: Icon(
                              Icons.delete,
                              size: 20,
                              color: AppColors.highlightedRed,
                            ),
                            text: "Delete",
                          ),
                        ],
                      ),
                    );
                  },
                  pressType: PressType.singleClick,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightGreen,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.more_horiz,
                      size: 20,
                      color: AppColors.lightGreen,
                    ),
                  ),
                ),
              ],
            ),
          ),
          title: Text(
            joke.title.substring(
              0,
              joke.title.length < 25 ? joke.title.length : 25,
            ),
            style: josefin.s20.withColor(
              AppColors.plainWhite,
            ),
          ),
          subtitle: Text(
            "by: ${joke.author}",
            style: josefin.s16.withColor(
              AppColors.plainWhite,
            ),
          ),
        ),
      ),
    );
  }
}
