/// Gathering fo constants, used in multiple instances throughout the app
class WidgetConstants {
  /// Duration of the animated opacity between 0.0 and 1.0
  static const Duration animatedOpacityDuration = Duration(milliseconds: 500);

  /// Duration for all animated borders across the app
  static const Duration animatedBorderDuration = Duration(milliseconds: 300);

  /// Border radius of containers and box-shaped widgets throughout the app
  static const double boxBorderRadius = 10;

  /// Border radius of buttons
  static const double buttonBorderRadius = 20;

  /// Border radius of auth input fields (sign in , sign up)
  static const double authFieldsBorderRadius = 5;

  /// Size of all small-sized icons throughout the app (on joke previews, etc.)
  static const double smallAvatarIconSize = 30;

  /// Size of icons for authentication services
  static const double authIconsSize = 40;

  /// Size of all big-sized icons throughout the app (on the profile page, etc.)
  static const double bigAvatarIconSize = 100;

  /// Border radius for container, that shows user's avatar as icon
  static const double iconContainerBorderRadius = 50;

  /// Size of icons in the nav bar
  static const double navItemIconSize = 35;

  /// Gap between items in the nav bar
  static const double navBarItemsGap = 5;

  /// Size of different icons,
  /// which represent authentication with
  /// third-party services (Google, Facebook, etc.)
  static const double servicesAuthIconSize = 30;

  /// Size of different icons,
  /// which represent authentication with
  /// third-party services (Google, Facebook, etc.)
  static const double jokeActionsIconSize = 30;

  /// Max length of the status
  static const int maxStatusLength = 30;

  /// Width of the leading widget in appbar
  static const double appbarLeadingWidth = 100;

  /// height of the background image for auth screens
  static const double backgroundImageHeight = 190;

  /// height of the background image for auth screens
  static const double bottomNavBarHeight = 70;
}
