import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flugo_mobile/core/routing/app_router.dart';
import 'package:flugo_mobile/core/routing/app_router.gr.dart';
import 'package:flugo_mobile/core/theme.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:flugo_mobile/features/auth/presentation/blocs/auth_cubit/auth_state.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Starting point of the application
class App extends StatelessWidget {
  /// Constructor
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthCubit>()..checkTokenRegistered(),
      child: MaterialApp.router(
        builder: BotToastInit(),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        routerConfig: sl<AppRouter>().config(
          initialRoutes: [
            const AuthNavigationRoute(),
          ],
          navigatorObservers: () => [
            BotToastNavigatorObserver(),
          ],
        ),
      ),
    );
  }
}

/// Screen that is like a route-guard for navigation - of user is authenticated -
///  let him pass to the main app, if not - use sign_in screen
@RoutePage()
class AuthNavigationScreen extends StatelessWidget {
  /// Screen that is like a route-guard for navigation - of user is authenticated -
  ///  let him pass to the main app, if not - use sign_in screen
  const AuthNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is UnauthenticatedState) {
          context.router.replace(const SignInRoute());
        }

        if (state is AuthenticatedState) {
          context.router.replace(const BottomNavBarRoute());
        }
      },
      child: const CircularProgressIndicator(),
    );
  }
}
