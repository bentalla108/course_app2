import 'package:course_app2/core/commons/views/page_under_construction.dart';
import 'package:course_app2/src/on_boarding/presentation/on_boardinf_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardindScreen.routeName:
      return _pagebuilder((_) => const OnBoardindScreen(), settings: settings);
    default:
      return _pagebuilder(
        (p0) => const PageUnderConstruction(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pagebuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) =>
        FadeTransition(opacity: animation, child: child),
    pageBuilder: (context, _, __) => page(context),
  );
}
