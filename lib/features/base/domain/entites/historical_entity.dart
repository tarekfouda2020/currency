class HistoricalParams {
  String baseCurrency;
  String dateTo;
  String dateFrom;
  String currencies;

  HistoricalParams(
      {required this.currencies, required this.dateTo, required this.dateFrom,required this.baseCurrency});
}
