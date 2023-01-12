import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/base/data/models/history_model/history_model.dart';
import 'package:flutter_tdd/features/base/data/models/support_data_model/support_data_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';
import 'package:injectable/injectable.dart';

import 'home_remote_data_source.dart';

@Injectable(as: HomeRemoteDataSource)
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {
  @override
  Future<Either<Failure, SupportDataModel>> getSupported(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.supported,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      refresh: false,
      responseKey: (data) => data,
      toJsonFunc: (json) {
        return SupportDataModel.fromJson(json);
      },
    );
    return await GenericHttpImpl<SupportDataModel>()(model);
  }

  @override
  Future<Either<Failure, List<HistoryDate>>> getHistorical(HistoricalParams param) async {
    String params =
        "&currencies=${param.currencies}&base_currency=${param.baseCurrency}&date_from=${param.dateFrom}&date_to=${param.dateTo}";
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.historical + params,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      refresh: false,
      responseKey: (data) => data["data"],
      toJsonFunc: (json){
       final List<HistoryDate> data = [];
        (json as Map<String, dynamic>).forEach((key, value) {
          data.add(HistoryDate.fromJson(value, key));
        });
        return data;
      }
    );
    return await GenericHttpImpl<List<HistoryDate>>()(model);
  }
}
