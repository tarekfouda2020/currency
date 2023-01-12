part of 'conversion_imports.dart';


class ConversionController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GenericBloc<String> valueCubit = GenericBloc("");
  String? baseCurrency;
  String? targetCurrency;

  void initDate(){
    baseCurrency = "USD";
    targetCurrency = "EUR";
    valueCubit.onUpdateData("");
  }

  void onchangeBaseCurrency(String? value) {
    baseCurrency = value;
  }

  void onchangeTargetCurrency(String? value) {
    targetCurrency = value;
  }

  Future<List<String>> getSupported() async {
    return await GetSupported().call(false).then((value) {
      return value.map((e) => e.currency).toList();
    });
  }

  Future<void> convert() async {
    if (formKey.currentState!.validate()) {
      valueCubit.onUpdateToInitState("");
      HistoricalParams params = _historicalParams();
      GetConversion().call(params).then((value) {
        valueCubit.onUpdateData(value);
      });
    }
  }

  HistoricalParams _historicalParams() {
    return HistoricalParams(
      currencies: targetCurrency ?? "",
      baseCurrency: baseCurrency ?? "",
    );
  }

}
