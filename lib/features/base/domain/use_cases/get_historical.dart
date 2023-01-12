import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/history_model/history_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';

class GetHistorical implements UseCase<List<HistoryDate>, HistoricalParams> {
  @override
  Future<List<HistoryDate>> call(HistoricalParams params) async {
    var data = await getIt<BaseRepository>().getHistorical(params);
    return data.fold((l) => [], (r) => r);
  }
}
