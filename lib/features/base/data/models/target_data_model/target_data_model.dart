import 'package:freezed_annotation/freezed_annotation.dart';

part 'target_data_model.freezed.dart';
part 'target_data_model.g.dart';

@freezed
class TargetDataModel with _$TargetDataModel{
  @JsonSerializable(explicitToJson: true)
  factory TargetDataModel({
    required String locale,
    @JsonKey(name: "two_letter_code") required String twoLetterCode,
    @JsonKey(name: "currency_name") required String currencyName,
    @JsonKey(name: "currency_name_short") required String currencyNameShort,
    @JsonKey(name: "display_symbol") required String displaySymbol,
    @JsonKey(name: "flag_url") required String flagUrl,
  }) = _TargetDataModel;


  factory TargetDataModel.fromJson(Map<String, dynamic> json) =>
      _$TargetDataModelFromJson(json);
}