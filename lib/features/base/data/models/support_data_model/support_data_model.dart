import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_data_model.freezed.dart';
part 'support_data_model.g.dart';

@freezed
class SupportDataModel with _$SupportDataModel{
  @JsonSerializable(explicitToJson: true)
  factory SupportDataModel({
@JsonKey(name: "supported_codes") required List<List<String>> supportedCodes,
  }) = _SupportDataModel;


  factory SupportDataModel.fromJson(Map<String, dynamic> json) =>
      _$SupportDataModelFromJson(json);
}