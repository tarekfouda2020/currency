

import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';

import '../../../../core/helpers/di.dart';
import '../../../../core/usecases/use_case.dart';
import '../../data/models/products/product_model.dart';

class GetMarketProducts extends UseCase<List<ProductModel>, bool> {

  @override
  Future<List<ProductModel>> call(bool params)async {
    var result =await getIt<BaseRepository>().getMarketProducts(params);
    return result.fold((l) => [], (r) => r);
  }


}