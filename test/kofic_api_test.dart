import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shining_movie/src/feature/data/data_source/remote/kofic_api.dart';

import 'kofic_api_test.mocks.dart';

@GenerateMocks([KoficApi])
void main() {
  group('kofic api test', () {
    test('kofic api success', () async {
      MockKoficApi koficApi = MockKoficApi();

      when(koficApi.getDailyBoxOffice(targetDt: '20220101')).thenAnswer((
          realInvocation) =>
          Future.value(
              Response(
                data: {'data': ''},
                statusCode: 200,
                requestOptions: RequestOptions(path: ''),
              )
          ));

      Response response = await koficApi.getDailyBoxOffice(targetDt: '20220101');

      expect(response.statusCode, 200);
    });

    test('kofic api failure', () async {
      MockKoficApi koficApi = MockKoficApi();

      when(koficApi.getDailyBoxOffice(targetDt: '20220101')).thenAnswer((
          realInvocation) =>
          Future.value(
              Response(
                data: {'data': ''},
                statusCode: 400,
                requestOptions: RequestOptions(path: ''),
              )
          ));

      Response response = await koficApi.getDailyBoxOffice(targetDt: '20220101');

      expect(response.statusCode, 400);
    });
  });
}
