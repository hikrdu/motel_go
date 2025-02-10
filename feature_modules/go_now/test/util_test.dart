import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

class MockGoNowBloc extends Mock implements GoNowBloc {}

class MockGoNowRepository extends Mock implements GoNowRepository {}

class MockHttpClient extends Mock implements http.Client {}

class MockGoNowState extends Mock implements GoNowState {}

class MockMotelsLoadingState extends Mock implements MotelsLoadingState {}

class MockMotelsLoadedState extends Mock implements MotelsLoadedState {}

class MockMotelsErrorState extends Mock implements MotelsErrorState {}

class MockBaseRepository extends Mock implements BaseRepository {}

class MockFavoriteBloc extends Mock implements FavoriteBloc {}

class MockBaseModel extends Mock implements BaseModel {}

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

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class MockHttpResponse extends Mock implements http.Response {
  @override
  final int statusCode;
  @override
  final String body;

  MockHttpResponse({required this.statusCode, required this.body});

  int get getStatusCode => statusCode;

  String get getBody => body;
}

initializeUtilTest() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    baseRepository = MockBaseRepository();
  });
}
