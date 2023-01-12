class HistoricalParams {
  String baseCurrency;
  String? dateTo;
  String? dateFrom;
  String currencies;

  HistoricalParams(
      {required this.currencies,  this.dateTo,  this.dateFrom,required this.baseCurrency});
}
