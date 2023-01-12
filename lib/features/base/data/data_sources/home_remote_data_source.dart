import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';

abstract class HomeRemoteDataSource {

  Future<Either<Failure,List<List<String>>>> getSupported(bool param);


}