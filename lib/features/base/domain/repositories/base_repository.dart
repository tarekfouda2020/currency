import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/base/data/models/support_data_model/support_data_model.dart';
import 'package:flutter_tdd/features/base/data/models/target_data_model/target_data_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';


abstract class BaseRepository {
  Future<Either<Failure, SupportDataModel>> getSupported(bool param);

  Future<Either<Failure,TargetDataModel>> getTargetData(String param);

  Future<Either<Failure,dynamic>> getHistorical(HistoricalParams param);

}