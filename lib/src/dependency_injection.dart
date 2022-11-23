import 'package:dio/dio.dart';
import 'package:shining_movie/src/feature/data/repositories/kofic_repository_impl.dart';
import 'package:shining_movie/src/feature/domain/repositories/kofic_repository.dart';

import 'core/values/constants.dart';
import 'feature/data/data_source/remote/kofic_api.dart';

void init() {
  Dio dio = Dio(BaseOptions(
    queryParameters: {
      'key': apiKey,
    },
  ));

  KoficApi koficApi = KoficApi(dio);
  KoficRepository koficRepository = KoficRepositoryImpl(koficApi: koficApi);
}
