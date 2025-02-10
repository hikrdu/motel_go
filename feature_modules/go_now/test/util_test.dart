import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGoNowBloc extends Mock implements GoNowBloc {}

class MockGoNowRepository extends Mock implements GoNowRepository {}

class MockGoNowState extends Mock implements GoNowState {}

class MockMotelsLoadingState extends Mock implements MotelsLoadingState {}

class MockMotelsLoadedState extends Mock implements MotelsLoadedState {}

class MockMotelsErrorState extends Mock implements MotelsErrorState {}

class MockBaseRepository extends Mock implements BaseRepository {}

class MockDataModel extends Mock implements DataModel {
  @override
  // TODO: implement moteis
  List<MotelModel>? get moteis => [MockMotelModel()];
}

class MockMotelModel extends Mock implements MotelModel {
  @override
  // TODO: implement suites
  List<SuiteModel>? get suites => [MockSuiteModel()];
}

class MockSuiteModel extends Mock implements SuiteModel {}

initializeUtilTest() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    baseRepository = MockBaseRepository();
  });
}
