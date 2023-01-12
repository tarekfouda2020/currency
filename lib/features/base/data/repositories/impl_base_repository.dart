import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/base/data/data_sources/home_remote_data_source.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository {


  @override
  Future<Either<Failure, List<List<String>>>> getSupported(bool param) async{
    return await getIt<HomeRemoteDataSource>().getSupported(param);
  }


}