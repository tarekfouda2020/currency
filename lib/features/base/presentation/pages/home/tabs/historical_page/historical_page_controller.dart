part of 'historical_page_imports.dart';

class HistoricalController {
  TextEditingController baseCurrency = TextEditingController();
  TextEditingController currencies = TextEditingController();
  TextEditingController fromDate = TextEditingController();
  TextEditingController toDate = TextEditingController();
  GenericBloc<Map<String, Map<String, num>>?> historicalCubit =
      GenericBloc(null);

  Future<void> getHistorical() async {
    HistoricalParams params = _historicalParams();
    await GetHistorical().call(params).then((value) {
      if (value != null) {
        print(">>>>>>>>>>$value");
        historicalCubit.onUpdateData(value);
        print(">>>>>>>>>>${historicalCubit.state.data}");
      }
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
