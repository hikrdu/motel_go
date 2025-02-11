import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils_test.dart';

void main() {
  initializeUtilTest();
  group('DiscountModel', () {
    test('fromJson', () {
      final json = {'desconto': 10.0};
      final discountModel = DiscountModel.fromJson(json);
      expect(discountModel.desconto, 10.0);
    });

    test('toJson', () {
      final discountModel = DiscountModel(desconto: 10.0);
      final json = discountModel.toJson();
      expect(json, {'desconto': 10.0});
    });
  });
}
