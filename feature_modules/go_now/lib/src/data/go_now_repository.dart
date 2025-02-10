import 'dart:convert';

import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/foundation.dart';

class GoNowRepository implements IGoNowRepository {
  @override
  Future<BaseModel?> fetchMotels() async {
    try {
      return await baseRepository.get('/b/1IXK').then((response) => BaseModel.fromJson(json.decode(response.body)));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
