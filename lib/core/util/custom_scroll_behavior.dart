import 'package:flutter/widgets.dart';

/// Custom behavior to hide glowing overscroll indicator
class CustomBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
