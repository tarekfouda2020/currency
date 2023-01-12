import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';

class ApiNames {
  static const String key = "?apikey=5AG5AnL6th3LZtEKsdKRKrcnCHlDY9WeAaBsXWZk";
  static const String baseUrl =
      "https://api.freecurrencyapi.com/v1/";



  static const String supported = "${baseUrl}currencies$key&currencies=";
  static String historical(HistoricalParams param) => "${baseUrl}historical$key&currencies=${param.currencies}&base_currency=${param.baseCurrency}&date_from=${param.dateFrom}&date_to=${param.dateTo}";
}
