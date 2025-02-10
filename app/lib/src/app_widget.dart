import 'package:app/app.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();
late BaseRepository baseRepository;

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: Key('material_app_key'),
      title: AppConstants.kAppName,
      theme: AppTheme.defaultTheme,
      initialRoute: AppRoutes.splashRoute,
      onGenerateRoute: AppRoutes.generateRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => NotFoundPage()),
      navigatorKey: appNavigatorKey,
    );
  }
}
