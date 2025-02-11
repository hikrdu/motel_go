import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBaseRepository extends Mock implements BaseRepository {}

class MockBaseModel extends Mock implements BaseModel {}

class MockCategoryItemModel extends Mock implements CategoryItemModel {}

class MockDataModel extends Mock implements DataModel {}

class MockDiscountModel extends Mock implements DiscountModel {}

class MockItemModel extends Mock implements ItemModel {}

class MockMotelModel extends Mock implements MotelModel {}

class MockPeriodModel extends Mock implements PeriodModel {}

class MockSuiteModel extends Mock implements SuiteModel {}

class MockBuildContext extends Mock implements BuildContext {}

class MockNavigatorState extends Mock implements NavigatorState {
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return super.toString();
  }
}

class MockMediaQuery extends Mock implements MediaQuery {
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return super.toString();
  }
}

class MockLocalizations extends Mock implements Localizations {
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return super.toString();
  }
}

initializeUtilTest() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    baseRepository = MockBaseRepository();
  });
}
