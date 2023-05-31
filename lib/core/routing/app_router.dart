import 'package:auto_route/auto_route.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart' as gr;

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
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
              page: gr.EmptyHomePage.page,
              children: [
                AutoRoute(page: gr.GlobalJokesRoute.page),
                CustomRoute(
                  page: gr.JokesDetailsRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                ),
                CustomRoute(
                  page: gr.CommentsRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                ),
              ],
            ),
            AutoRoute(page: gr.WriteJokeRoute.page),
            AutoRoute(page: gr.ProfileRoute.page),
          ],
        ),
      ];
}

@RoutePage(name: 'EmptyHomePage')
class EmptyHomePage extends AutoRouter {
  const EmptyHomePage({super.key});
}
