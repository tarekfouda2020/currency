import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/target_data_model/target_data_model.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';

class GetTargetData implements UseCase<TargetDataModel?, String> {
  @override
  Future<TargetDataModel?> call(String params) async {
    var data = await getIt<BaseRepository>().getTargetData(params);
    return data.fold((l) => null, (r) => r);
  }
}
