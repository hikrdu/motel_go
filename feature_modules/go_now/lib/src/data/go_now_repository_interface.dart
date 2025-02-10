import 'package:feature_module_base/feature_module_base.dart';

abstract class IGoNowRepository {
  Future<BaseModel?> fetchMotels();
}
