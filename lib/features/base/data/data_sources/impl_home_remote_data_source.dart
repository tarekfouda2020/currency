import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/base/data/models/ads/ad_model.dart';
import 'package:flutter_tdd/features/base/data/models/agent/agent_model.dart';
import 'package:flutter_tdd/features/base/data/models/cat_products/cat_products_model.dart';
import 'package:flutter_tdd/features/base/data/models/category/category_model.dart';
import 'package:flutter_tdd/features/base/data/models/products/product_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/category_items_params.dart';
import 'package:injectable/injectable.dart';

import 'home_remote_data_source.dart';

@Injectable(as: HomeRemoteDataSource)
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {

  @override
  Future<Either<Failure, List<List<String>>>> getSupported(bool param) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.supported,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      responseKey: (data)=>data['supported_codes'],
      toJsonFunc: (json) =>
      List<List<String>>.from(json.map((e) => AdModel.fromJson(e))),
    );
    return await GenericHttpImpl<List<List<String>>>()(model);
  }

}
