import 'package:dio/dio.dart';

import 'core/values/constants.dart';
import 'feature/data/data_source/remote/kofic_api.dart';

void init() {
  Dio dio = Dio(BaseOptions(
    queryParameters: {
      'key': apiKey,
    },
  ));

  KoficApi koficApi = KoficApi(dio);
}
