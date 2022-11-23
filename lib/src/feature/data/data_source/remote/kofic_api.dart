import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shining_movie/src/core/values/base_remote_url.dart';

part 'kofic_api.g.dart';

@RestApi(baseUrl: KoficApiUrl.baseUrl)
abstract class KoficApi {
  factory KoficApi(Dio dio, {String baseUrl}) = _KoficApi;

  @GET(KoficApiUrl.daliyBoxOffice)
  Future getDailyBoxOffice({
    @Query('targetDt') required String targetDt,
  });
}
