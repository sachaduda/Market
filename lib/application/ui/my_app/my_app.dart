import 'package:flutter/material.dart';
import 'package:online_market/application/ui/navigation/main_navigation.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = MainNavigation();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      routes: mainNavigation.routes,
      initialRoute: Screens.main,
    );
  }
}
