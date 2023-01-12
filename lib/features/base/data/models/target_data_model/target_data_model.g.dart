// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TargetDataModel _$$_TargetDataModelFromJson(Map<String, dynamic> json) =>
    _$_TargetDataModel(
      locale: json['locale'] as String,
      twoLetterCode: json['two_letter_code'] as String,
      currencyName: json['currency_name'] as String,
      currencyNameShort: json['currency_name_short'] as String,
      displaySymbol: json['display_symbol'] as String,
      flagUrl: json['flag_url'] as String,
    );

Map<String, dynamic> _$$_TargetDataModelToJson(_$_TargetDataModel instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'two_letter_code': instance.twoLetterCode,
      'currency_name': instance.currencyName,
      'currency_name_short': instance.currencyNameShort,
      'display_symbol': instance.displaySymbol,
      'flag_url': instance.flagUrl,
    };
