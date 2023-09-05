import 'package:evital_sales/utils/app_nav_path.dart';
import 'package:evital_sales/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'navigation/navigation_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().appThemeData,
      initialRoute: AppNavPath.splashPage,
      onGenerateRoute: NavigationService.onGeneratedRoutes,
    );
  }
}
