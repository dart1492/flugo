import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Single element of the jokes list
class JokesListElement extends StatelessWidget {
  static const double _trailingRowWidth = 120;

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
        // side: const BorderSide(
        //   color: AppColors.darkerGrey,
        //   width: 2.0,
        // ),
      ),
      color: AppColors.darkBlue,
      child: Theme(
        data: ThemeData(
          highlightColor: const Color.fromARGB(159, 56, 54, 64),
          splashColor: Colors.transparent,
        ),
        child: ListTile(
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
            width: _trailingRowWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  splashColor: const Color.fromARGB(136, 115, 97, 255),
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.highlightedViolet),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: const Icon(
                      FeatherIcons.heart,
                      color: AppColors.highlightedViolet,
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  splashColor: const Color.fromARGB(118, 255, 88, 88),
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.highlightedRed),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: const Icon(
                      FeatherIcons.delete,
                      color: AppColors.highlightedRed,
                      size: 18,
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
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          subtitle: Text(
            "by: ${joke.author}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
