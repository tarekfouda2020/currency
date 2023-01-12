// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportDataModel _$$_SupportDataModelFromJson(Map<String, dynamic> json) =>
    _$_SupportDataModel(
      supportedCodes: (json['supported_codes'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
    );

Map<String, dynamic> _$$_SupportDataModelToJson(_$_SupportDataModel instance) =>
    <String, dynamic>{
      'supported_codes': instance.supportedCodes,
    };
