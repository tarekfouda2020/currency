import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';

class GetHistorical implements UseCase<Map<String,Map<String,num>>?, HistoricalParams> {
  @override
  Future<Map<String,Map<String,num>>?> call(HistoricalParams params) async {
    var data = await getIt<BaseRepository>().getHistorical(params);
    return data.fold((l) => null, (r) => r);
  }
}
