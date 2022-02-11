import 'package:flutter/material.dart';

double sizeFromHeight(BuildContext context, double fraction) {
  final mediaQuery = MediaQuery.of(context);
  final height = mediaQuery.size.height;
  fraction = (height - mediaQuery.padding.top - AppBar().preferredSize.height) /
      fraction;
  return fraction;
}

double sizeFromWidth(BuildContext context, double fraction) {
  final mediaQuery = MediaQuery.of(context);
  final width = mediaQuery.size.width;
  fraction = (width) / fraction;
  return fraction;
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const Responsive(
      {Key? key, required this.mobile, required this.tablet, required this.web})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return web;
        } else if (constraints.maxWidth >= 650) {
          return tablet;
        }
        return mobile;
      },
    );
  }
}
