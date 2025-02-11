import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppConstants', () {
    test('kAppName should be "Guia de Motéis GO"', () {
      expect(AppConstants.kAppName, 'Guia de Motéis GO');
    });

    test('kBaseUrl should be "https://www.jsonkeeper.com"', () {
      expect(AppConstants.kBaseUrl, 'https://www.jsonkeeper.com');
    });

    test('kLogoPath should be "packages/app/assets/images/logo.webp"', () {
      expect(AppConstants.kLogoPath, 'packages/app/assets/images/logo.webp');
    });

    test('motelFilters should contain all the available filters', () {
      expect(AppConstants().motelFilters, [
        'com desconto',
        'disponível',
        'hidro',
        'piscina',
        'sauna',
        'ofurô',
        'decoração erótica',
        'decoração temática',
        'cadeira erótica',
        'pista de dança',
        'garagem privativa',
        'frigobar',
        'internet wi-fi',
        'suíte para festas',
        'suíte com acessibilidade',
      ]);
    });

    test('motelFilters should have 15 elements', () {
      expect(AppConstants().motelFilters.length, 15);
    });
  });
}
