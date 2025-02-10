import 'package:app/app.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashRoute = '/';
  static const String goNowRoute = '/go-now';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return null;
    }
  }
}

Future<dynamic> navigateTransition({required Widget nextPage, TransitionDirectionEnum? direction}) async {
  return await appNavigatorKey.currentState!.push(
    PageRouteBuilder(
      /// The duration of the transition.
      transitionDuration: const Duration(milliseconds: 200),

      /// A builder for the transition.
      transitionsBuilder: (_, animation, __, child) {
        switch (direction) {
          case TransitionDirectionEnum.rightToLeft:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          case TransitionDirectionEnum.bottomToTop:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          case TransitionDirectionEnum.centerZoomIn:
            return ScaleTransition(
              scale: Tween<double>(
                begin: 0.5,
                end: 1.0,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeIn,
                ),
              ),
              child: child,
            );
          case null:
            return child;
        }
      },

      /// A builder for the page.
      pageBuilder: (_, __, ___) => nextPage,
    ),
  );
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('4o4'),
      ),
    );
  }
}
