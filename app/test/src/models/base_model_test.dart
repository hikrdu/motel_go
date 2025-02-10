import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils_test.dart';

void main() {
  group('BaseModel', () {
    test('fromJson', () {
      final json = {
        'sucesso': true,
        'data': {'key': 'value'},
        'mensagem': ['message1', 'message2'],
      };

      final model = BaseModel.fromJson(json);

      expect(model.sucesso, true);
      expect(model.data, isNotNull);
      expect(model.mensagem, isNotNull);
    });

    test('toJson', () {
      final model = BaseModel(
        sucesso: true,
        data: MockDataModel(),
        mensagem: ['message1', 'message2'],
      );

      final json = model.toJson();

      expect(json['sucesso'], true);
      expect(json['data'], isNotNull);
      expect(json['mensagem'], isNotNull);
    });
  });
}
