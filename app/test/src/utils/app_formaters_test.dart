import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppFormater', () {
    test('should format currency with symbol', () {
      final result = AppFormater.currencyFormat(100.0);
      expect(result, 'R\$ 100,00');
    });

    test('should format currency without symbol', () {
      final result = AppFormater.currencyFormat(100.0, symbol: false);
      expect(result, '100,00');
    });

    test('should format null currency', () {
      final result = AppFormater.currencyFormat(null);
      expect(result, '');
    });

    test('should format zero currency', () {
      final result = AppFormater.currencyFormat(0.0);
      expect(result, 'R\$ 0,00');
    });
  });
}
