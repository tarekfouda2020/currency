part of 'historical_page_imports.dart';

class HistoricalController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController fromDate = TextEditingController();
  final TextEditingController toDate = TextEditingController();

  final GenericBloc<List<HistoryDate>> historicalCubit = GenericBloc([]);
  final GenericBloc<String> fromDateCubit = GenericBloc("");
  final GenericBloc<String> toDateCubit = GenericBloc("");

  String? baseCurrency;
  String? targetCurrency;

  void initDate(){
    baseCurrency = "USD";
    targetCurrency = "EUR";
    toDate.text =  DateFormat("yyyy-MM-dd","en").format(DateTime.now().subtract(const Duration(days: 1)));
    fromDate.text = DateFormat("yyyy-MM-dd","en").format(DateTime.now().subtract(const Duration(days: 7)));
  }

  void onchangeBaseCurrency(String? value) {
    baseCurrency = value;
  }

  void onchangeTargetCurrency(String? value) {
    targetCurrency = value;
  }

  Future<void> getHistorical() async {
    if (formKey.currentState!.validate()) {
      HistoricalParams params = _historicalParams();
      GetHistorical().call(params).then((value) {
        historicalCubit.onUpdateData(value);
      });
    }
  }

  Future<void> selectDate(BuildContext context, GenericBloc<String> cubit)async {
    var date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 1)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now().subtract(const Duration(days: 1)),
    );
    if (date!=null) {
      cubit.onUpdateData(DateFormat("yyyy-MM-dd","en").format(date));
    }
  }

  Future<List<String>> getSupported() async {
    return await GetSupported().call(false).then((value) {
      return value?.supportedCodes.map((e) => e.first).toList() ?? [];
    });
  }

  HistoricalParams _historicalParams() {
    return HistoricalParams(
      currencies: targetCurrency ?? "",
      dateTo: toDate.text,
      dateFrom: fromDate.text,
      baseCurrency: baseCurrency ?? "",
    );
  }
}
