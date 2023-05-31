// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flugo_mobile/app.dart' as _i1;
import 'package:flugo_mobile/core/routing/app_router.dart' as _i2;
import 'package:flugo_mobile/features/auth/presentation/screens/auth/sign_in_screen.dart'
    as _i3;
import 'package:flugo_mobile/features/auth/presentation/screens/auth/sign_up_screen.dart'
    as _i4;
import 'package:flugo_mobile/features/bottom_nav_bar/presentation/bottom_nav_bar_screen.dart'
    as _i5;
import 'package:flugo_mobile/features/comments/presentation/comments_screen/comments_screen.dart'
    as _i10;
import 'package:flugo_mobile/features/jokes/domain/entities/get_joke.dart'
    as _i13;
import 'package:flugo_mobile/features/jokes/presentation/screens/global_jokes_screen/global_jokes_screen.dart'
    as _i6;
import 'package:flugo_mobile/features/jokes/presentation/screens/joke_details_screen/jokes_details_screen.dart'
    as _i7;
import 'package:flugo_mobile/features/jokes/presentation/screens/write_joke_screen/write_joke_screen.dart'
    as _i8;
import 'package:flugo_mobile/features/profile/presentation/screens/profile_screen.dart'
    as _i9;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AuthNavigationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthNavigationScreen(),
      );
    },
    EmptyHomePage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyHomePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpScreen(),
      );
    },
    BottomNavBarRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BottomNavBarScreen(),
      );
    },
    GlobalJokesRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.GlobalJokesScreen(),
      );
    },
    JokesDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<JokesDetailsRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.JokesDetailsScreen(
          key: args.key,
          joke: args.joke,
        ),
      );
    },
    WriteJokeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.WriteJokeScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProfileScreen(),
      );
    },
    CommentsRoute.name: (routeData) {
      final args = routeData.argsAs<CommentsRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.CommentsScreen(
          key: args.key,
          jokeId: args.jokeId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthNavigationScreen]
class AuthNavigationRoute extends _i11.PageRouteInfo<void> {
  const AuthNavigationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AuthNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthNavigationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EmptyHomePage]
class EmptyHomePage extends _i11.PageRouteInfo<void> {
  const EmptyHomePage({List<_i11.PageRouteInfo>? children})
      : super(
          EmptyHomePage.name,
          initialChildren: children,
        );

  static const String name = 'EmptyHomePage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SignInScreen]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignUpScreen]
class SignUpRoute extends _i11.PageRouteInfo<void> {
  const SignUpRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BottomNavBarScreen]
class BottomNavBarRoute extends _i11.PageRouteInfo<void> {
  const BottomNavBarRoute({List<_i11.PageRouteInfo>? children})
      : super(
          BottomNavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBarRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.GlobalJokesScreen]
class GlobalJokesRoute extends _i11.PageRouteInfo<void> {
  const GlobalJokesRoute({List<_i11.PageRouteInfo>? children})
      : super(
          GlobalJokesRoute.name,
          initialChildren: children,
        );

  static const String name = 'GlobalJokesRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.JokesDetailsScreen]
class JokesDetailsRoute extends _i11.PageRouteInfo<JokesDetailsRouteArgs> {
  JokesDetailsRoute({
    _i12.Key? key,
    required _i13.GetJoke joke,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          JokesDetailsRoute.name,
          args: JokesDetailsRouteArgs(
            key: key,
            joke: joke,
          ),
          initialChildren: children,
        );

  static const String name = 'JokesDetailsRoute';

  static const _i11.PageInfo<JokesDetailsRouteArgs> page =
      _i11.PageInfo<JokesDetailsRouteArgs>(name);
}

class JokesDetailsRouteArgs {
  const JokesDetailsRouteArgs({
    this.key,
    required this.joke,
  });

  final _i12.Key? key;

  final _i13.GetJoke joke;

  @override
  String toString() {
    return 'JokesDetailsRouteArgs{key: $key, joke: $joke}';
  }
}

/// generated route for
/// [_i8.WriteJokeScreen]
class WriteJokeRoute extends _i11.PageRouteInfo<void> {
  const WriteJokeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WriteJokeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteJokeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.CommentsScreen]
class CommentsRoute extends _i11.PageRouteInfo<CommentsRouteArgs> {
  CommentsRoute({
    _i12.Key? key,
    required int jokeId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          CommentsRoute.name,
          args: CommentsRouteArgs(
            key: key,
            jokeId: jokeId,
          ),
          initialChildren: children,
        );

  static const String name = 'CommentsRoute';

  static const _i11.PageInfo<CommentsRouteArgs> page =
      _i11.PageInfo<CommentsRouteArgs>(name);
}

class CommentsRouteArgs {
  const CommentsRouteArgs({
    this.key,
    required this.jokeId,
  });

  final _i12.Key? key;

  final int jokeId;

  @override
  String toString() {
    return 'CommentsRouteArgs{key: $key, jokeId: $jokeId}';
  }
}
