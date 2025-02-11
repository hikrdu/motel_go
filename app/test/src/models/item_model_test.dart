import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ItemModel', () {
    test('fromJson', () {
      final json = {'nome': 'Test Item'};
      final itemModel = ItemModel.fromJson(json);
      expect(itemModel.nome, 'Test Item');
    });

    test('toJson', () {
      final itemModel = ItemModel(nome: 'Test Item');
      final json = itemModel.toJson();
      expect(json, {'nome': 'Test Item'});
    });
  });
}
