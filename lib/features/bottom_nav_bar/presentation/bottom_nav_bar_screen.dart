import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

@RoutePage()

/// Screen with bottom nav bar and different screen
class BottomNavBarScreen extends StatelessWidget {
  /// Screen with bottom nav bar and different screen
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: AppColors.darkBlue,
      routes: const [
        GlobalJokesRoute(),
        WriteJokeRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SalomonBottomBar(
            items: [
              SalomonBottomBarItem(
                unselectedColor: const Color.fromARGB(195, 255, 255, 255),
                selectedColor: AppColors.highlightedViolet,
                icon: const Icon(
                  FeatherIcons.home,
                  size: 25,
                ),
                title: Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    "Home",
                    style: josefin.s18,
                  ),
                ),
              ),
              SalomonBottomBarItem(
                unselectedColor: const Color.fromARGB(195, 255, 255, 255),
                selectedColor: AppColors.highlightedViolet,
                icon: const Icon(
                  FeatherIcons.edit,
                  size: 25,
                ),
                title: Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    "Write",
                    style: josefin.s18,
                  ),
                ),
              ),
              SalomonBottomBarItem(
                unselectedColor: const Color.fromARGB(195, 255, 255, 255),
                selectedColor: AppColors.highlightedViolet,
                icon: const Icon(
                  FeatherIcons.user,
                  size: 25,
                ),
                title: Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    "Profile",
                    style: josefin.s18,
                  ),
                ),
              ),
            ],
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
