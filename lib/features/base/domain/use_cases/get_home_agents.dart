import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/agent/agent_model.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';


class GetHomeAgents extends UseCase<List<AgentModel>, bool> {

  @override
  Future<List<AgentModel>> call(bool params)async {
    var result =await getIt<BaseRepository>().getAgents(params);
    return result.fold((l) => [], (r) => r);
  }


}