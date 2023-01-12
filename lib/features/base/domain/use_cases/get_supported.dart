import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/support_data_model/support_data_model.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';

class GetSupported implements UseCase<List<SupportDataModel>, bool> {
  @override
  Future<List<SupportDataModel>> call(bool params) async {
    var data = await getIt<BaseRepository>().getSupported(params);
    return data.fold((l) => [], (r) => r);
  }
}
