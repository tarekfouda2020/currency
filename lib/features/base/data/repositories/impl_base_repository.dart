import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/base/data/data_sources/home_remote_data_source.dart';
import 'package:flutter_tdd/features/base/data/models/support_data_model/support_data_model.dart';
import 'package:flutter_tdd/features/base/data/models/target_data_model/target_data_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository {
  @override
  Future<Either<Failure, SupportDataModel>> getSupported(params) async {
    return await getIt.get<HomeRemoteDataSource>().getSupported(params);
  }

  @override
  Future<Either<Failure, TargetDataModel>> getTargetData(String param) async {
    return await getIt.get<HomeRemoteDataSource>().getTargetData(param);
  }

  @override
  Future<Either<Failure, dynamic>> getHistorical(HistoricalParams param) async {
    return await getIt.get<HomeRemoteDataSource>().getHistorical(param);
  }
}
