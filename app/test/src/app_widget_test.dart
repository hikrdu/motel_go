import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils_test.dart';

void main() {
  initializeUtilTest();
  testWidgets('AppWidget has a title and routes', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AppWidget());

    /// Find the MaterialApp widget in the app's widget tree.
    final materialkey = find.byKey(Key('material_app_key'));

    /// Get the MaterialApp widget from the tester.
    final materialWidget = tester.widget(materialkey) as MaterialApp;

    /// Verify that the MaterialApp's title matches the expected app name.
    expect(materialWidget.title, AppConstants.kAppName);

    // Verify that the initial route is the splash route.
    expect(find.byType(MaterialApp), findsOneWidget);
    final MaterialApp app = tester.widget(find.byType(MaterialApp));
    expect(app.initialRoute, AppRoutes.splashRoute);

    // Navigate to the splash route.
    await tester.pumpAndSettle();

    // Verify that the splash screen contains the image.
    expect(find.byType(Image), findsOneWidget);
    expect(find.image(AssetImage(AppConstants.kLogoPath)), findsOneWidget);

    // Advance time to let any pending timers complete.
    await tester.pump(const Duration(seconds: 2));
  });
}
