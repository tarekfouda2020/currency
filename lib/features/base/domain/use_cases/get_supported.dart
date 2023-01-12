import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';

class GetSupported implements UseCase<List<List<String>>, bool> {
  @override
  Future<List<List<String>>> call(bool params) async {
    var data = await getIt<BaseRepository>().getSupported(params);
    return data.fold((l) => [], (r) => r);
  }
}
