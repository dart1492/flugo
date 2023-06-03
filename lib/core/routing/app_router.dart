import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart' as gr;

@AutoRouterConfig(replaceInRouteName: "Screen,Route")

/// Main router of the app
class AppRouter extends gr.$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: gr.AuthNavigationRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: gr.SignInRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: gr.SignUpRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        AutoRoute(
          page: gr.BottomNavBarRoute.page,
          children: [
            AutoRoute(
              page: gr.HomeRouter.page,
              children: [
                AutoRoute(
                  page: gr.GlobalJokesRoute.page,
                ),
                CustomRoute(
                  page: gr.JokesDetailsRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                ),
                CustomRoute(
                  page: gr.CommentsRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                ),
              ],
            ),
            AutoRoute(
              page: gr.WriteJokeRoute.page,
            ),
            AutoRoute(
              page: gr.ProfileRouter.page,
              children: [
                AutoRoute(
                  page: gr.ProfileRoute.page,
                  maintainState: false,
                ),
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  page: gr.FramesRoute.page,
                  maintainState: false,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'HomeRouter')

/// Router for Home section -
///  Joke details and Comments go on top, but they are nested in bottom bar
class HomeRouter extends AutoRouter {
  /// Router for Home section -
  ///  Joke details and Comments go on top, but they are nested in bottom bar
  const HomeRouter({super.key});
}

@RoutePage(name: "ProfileRouter")

/// Router for profile page to allow nested navigation for this section
class EmptyProfilePage extends AutoRouter {
  /// Router for profile page to allow nested navigation
  const EmptyProfilePage({super.key});
}
