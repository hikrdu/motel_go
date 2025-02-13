import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

class MockGoNowBloc extends Mock implements GoNowBloc {}

class MockFavoriteBloc extends Mock implements FavoriteBloc {}

class MockFavoriteState extends Mock implements FavoriteState {}

class MockReservationBloc extends Mock implements ReservationBloc {}

class MockGoNowRepository extends Mock implements GoNowRepository {}

class MockHttpClient extends Mock implements http.Client {}

class MockGoNowState extends Mock implements GoNowState {}

class MockMotelsLoadingState extends Mock implements MotelsLoadingState {}

class MockMotelsLoadedState extends Mock implements MotelsLoadedState {}

class MockMotelsErrorState extends Mock implements MotelsErrorState {}

class MockBaseRepository extends Mock implements BaseRepository {}

class MockBaseModel extends Mock implements BaseModel {}

class MockDataModel extends Mock implements DataModel {
  @override
  List<MotelModel>? get moteis => [MockMotelModel()];
}

class MockMotelModel extends Mock implements MotelModel {
  // @override
  // List<SuiteModel>? get suites => [MockSuiteModel()];
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

class MockOnTap extends Mock {
  void call();
}

class MockAppConstants extends Mock implements AppConstants {}

late MockHttpClient mockClient;
late MockHttpResponse mockResponse;

initializeUtilTest() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    appNavigatorKey = GlobalKey<NavigatorState>();
    baseRepository = MockBaseRepository();
    mockClient = MockHttpClient();
    mockResponse = MockHttpResponse(statusCode: 200, body: 'mock-image-data');
  });
}
