import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppRoutes', () {
    test('generateRoute returns MaterialPageRoute for splashRoute', () {
      final settings = RouteSettings(name: AppRoutes.splashRoute);
      final route = AppRoutes.generateRoute(settings);
      expect(route, isA<MaterialPageRoute>());
      expect((route as MaterialPageRoute).builder, isA<Widget Function(BuildContext)>());
    });

    test('generateRoute returns MaterialPageRoute for goNowRoute', () {
      final settings = RouteSettings(name: AppRoutes.goNowRoute);
      final route = AppRoutes.generateRoute(settings);
      expect(route, isA<MaterialPageRoute>());
      expect((route as MaterialPageRoute).builder, isA<Widget Function(BuildContext)>());
    });

    test('generateRoute returns null for unknown route', () {
      final settings = RouteSettings(name: '/unknown');
      final route = AppRoutes.generateRoute(settings);
      expect(route, isNull);
    });
  });

  group('navigateTransition', () {
    appNavigatorKey = GlobalKey<NavigatorState>();

    testWidgets('navigates to nextPage with default transition', (tester) async {
      final nextPage = Container();
      await tester.pumpWidget(MaterialApp(
        navigatorKey: appNavigatorKey,
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () => navigateTransition(nextPage: nextPage),
                child: const Text('Navigate'),
              );
            },
          ),
        ),
      ));
      await tester.tap(find.text('Navigate'));
      await tester.pumpAndSettle();
      expect(find.byWidget(nextPage), findsOneWidget);
    });

    testWidgets('navigates to nextPage with rightToLeft transition', (tester) async {
      final nextPage = Container();
      await tester.pumpWidget(MaterialApp(
        navigatorKey: appNavigatorKey,
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () => navigateTransition(nextPage: nextPage, direction: TransitionDirectionEnum.rightToLeft),
                child: const Text('Navigate'),
              );
            },
          ),
        ),
      ));
      await tester.tap(find.text('Navigate'));
      await tester.pumpAndSettle();
      expect(find.byWidget(nextPage), findsOneWidget);
    });

    testWidgets('navigates to nextPage with bottomToTop transition', (tester) async {
      final nextPage = Container();
      await tester.pumpWidget(MaterialApp(
        navigatorKey: appNavigatorKey,
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () => navigateTransition(nextPage: nextPage, direction: TransitionDirectionEnum.bottomToTop),
                child: const Text('Navigate'),
              );
            },
          ),
        ),
      ));
      await tester.tap(find.text('Navigate'));
      await tester.pumpAndSettle();
      expect(find.byWidget(nextPage), findsOneWidget);
    });

    testWidgets('navigates to nextPage with centerZoomIn transition', (tester) async {
      final nextPage = Container();
      await tester.pumpWidget(MaterialApp(
        navigatorKey: appNavigatorKey,
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () =>
                    navigateTransition(nextPage: nextPage, direction: TransitionDirectionEnum.centerZoomIn),
                child: const Text('Navigate'),
              );
            },
          ),
        ),
      ));
      await tester.tap(find.text('Navigate'));
      await tester.pumpAndSettle();
      expect(find.byWidget(nextPage), findsOneWidget);
    });
  });

  group('NotFoundPage', () {
    testWidgets('displays 404 text', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: NotFoundPage()));
      expect(find.text('4o4'), findsOneWidget);
    });
  });
}
