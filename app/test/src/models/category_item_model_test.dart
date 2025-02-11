import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryItemModel', () {
    test('fromJson', () {
      final json = {
        'nome': 'Test Name',
        'icone': 'Test Icon',
      };

      final categoryItemModel = CategoryItemModel.fromJson(json);

      expect(categoryItemModel.nome, 'Test Name');
      expect(categoryItemModel.icone, 'Test Icon');
    });

    test('toJson', () {
      final categoryItemModel = CategoryItemModel(
        nome: 'Test Name',
        icone: 'Test Icon',
      );

      final json = categoryItemModel.toJson();

      expect(json['nome'], 'Test Name');
      expect(json['icone'], 'Test Icon');
    });
  });
}
