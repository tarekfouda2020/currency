import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/base/data/data_sources/home_remote_data_source.dart';
import 'package:flutter_tdd/features/base/data/models/history_model/history_model.dart';
import 'package:flutter_tdd/features/base/data/models/support_data_model/support_data_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository {
  @override
  Future<Either<Failure, List<SupportDataModel>>> getSupported(param) async {
    return await getIt.get<HomeRemoteDataSource>().getSupported(param);
  }

  @override
  Future<Either<Failure, List<HistoryDate>>> getHistorical(HistoricalParams param) async {
    return await getIt.get<HomeRemoteDataSource>().getHistorical(param);
  }

  @override
  Future<Either<Failure, String>> convert(HistoricalParams param)async {
    return await getIt.get<HomeRemoteDataSource>().convert(param);

  }
}
