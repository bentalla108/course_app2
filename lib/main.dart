import 'package:course_app2/core/res/colours.dart';
import 'package:course_app2/core/res/fonts.dart';
import 'package:course_app2/core/services/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Education App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.transparent),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(accentColor: Colours.primaryColour),
        fontFamily: Fonts.poppins,
        useMaterial3: true,
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
