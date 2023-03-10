import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/base/data/models/history_model/history_model.dart';
import 'package:flutter_tdd/features/base/data/models/support_data_model/support_data_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';


abstract class BaseRepository {
  Future<Either<Failure, List<SupportDataModel>>> getSupported(bool param);


  Future<Either<Failure, List<HistoryDate>>> getHistorical(HistoricalParams param);

  Future<Either<Failure, String>> convert(HistoricalParams param);

}