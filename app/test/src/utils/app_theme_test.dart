import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppTheme', () {
    test('color map is not empty', () {
      expect(AppTheme.color, isNotEmpty);
    });

    test('kDefaultColor is not null', () {
      expect(AppTheme.kDefaultColor, isNotNull);
    });

    test('defaultTheme is not null', () {
      expect(AppTheme.defaultTheme, isNotNull);
    });

    test('defaultTheme primaryColor is kDefaultColor', () {
      expect(AppTheme.defaultTheme.primaryColor, AppTheme.kDefaultColor);
    });

    test('defaultTheme progressIndicatorTheme color is kDefaultColor', () {
      expect(AppTheme.defaultTheme.progressIndicatorTheme.color, AppTheme.kDefaultColor);
    });

    test('defaultTheme cardColor is white', () {
      expect(AppTheme.defaultTheme.cardColor, Colors.white);
    });
  });
}
