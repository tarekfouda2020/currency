part of 'historical_page_imports.dart';

class HistoricalController {
  TextEditingController baseCurrency = TextEditingController();
  TextEditingController currencies = TextEditingController();
  TextEditingController fromDate = TextEditingController();
  TextEditingController toDate = TextEditingController();
  GenericBloc<List<HistoryDate>> historicalCubit = GenericBloc([]);

  Future<void> getHistorical() async {
    HistoricalParams params = _historicalParams();
     GetHistorical().call(params).then((value) {
       historicalCubit.onUpdateData(value);
     });
  }

  HistoricalParams _historicalParams() {
    return HistoricalParams(
        currencies: currencies.text,
        dateTo: "2023-01-11",
        dateFrom: "2023-01-09",
        baseCurrency: baseCurrency.text);
  }
}
