import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> myNav = GlobalKey<NavigatorState>();

Route<dynamic>? onGenerateRoute(RouteSettings settings) => null;

class MagicRoute {
  static BuildContext currentContext = myNav.currentContext!;

  static Future<dynamic> navigateTo(Widget page) =>
      myNav.currentState!.push(MaterialPageRoute(builder: (_) => page));

  static Future<dynamic> navigatorAndPopAll(Widget page) =>
      myNav.currentState!.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => page), (_) => false);

  static Future<dynamic> navigatorAndPopUntilFirstPage(Widget page) =>
      myNav.currentState!.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => page), (_) => _.isFirst);

  static Future<dynamic> navigatorAndReplacement(Widget page) =>
      myNav.currentState!
          .pushReplacement(MaterialPageRoute(builder: (_) => page));
}
