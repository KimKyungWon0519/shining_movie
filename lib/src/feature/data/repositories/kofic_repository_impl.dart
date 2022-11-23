import 'package:shining_movie/src/feature/data/data_source/remote/kofic_api.dart';
import 'package:shining_movie/src/feature/domain/repositories/kofic_repository.dart';

class KoficRepositoryImpl implements KoficRepository {
  late final KoficApi _koficApi;

  KoficRepositoryImpl({
    required KoficApi koficApi,
  }) : _koficApi = koficApi;

  @override
  getDailyBoxOffice() async {
    await _koficApi.getDailyBoxOffice(targetDt: '20220101');
  }
}
