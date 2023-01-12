part of 'home_main_imports.dart';

class HomeMainController {
  GenericBloc<List<List<String>>> supportedCubit = GenericBloc([]);

  Future<SupportDataModel?>? getSupported() async {
   return await GetSupported().call(false).then((value) {
      supportedCubit.onUpdateData(value?.supportedCodes ?? []);
      return value;
    });
  }

  Future<TargetDataModel> getTargetData(String supportCode) async {
    var data = await GetTargetData().call(supportCode);
    return data!;
  }

  String currencyToEmoji(String currencyFlag) {
    // 0x1F1E6 is Regional Indicator Symbol Letter A
    // See: https://en.wikipedia.org/wiki/Regional_Indicator_Symbol
    final int firstLetter = currencyFlag.codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter = currencyFlag.codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

}
