// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportDataModel _$SupportDataModelFromJson(Map<String, dynamic> json) {
  return _SupportDataModel.fromJson(json);
}

/// @nodoc
mixin _$SupportDataModel {
  @JsonKey(name: "supported_codes")
  List<List<String>> get supportedCodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportDataModelCopyWith<SupportDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportDataModelCopyWith<$Res> {
  factory $SupportDataModelCopyWith(
          SupportDataModel value, $Res Function(SupportDataModel) then) =
      _$SupportDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "supported_codes") List<List<String>> supportedCodes});
}

/// @nodoc
class _$SupportDataModelCopyWithImpl<$Res>
    implements $SupportDataModelCopyWith<$Res> {
  _$SupportDataModelCopyWithImpl(this._value, this._then);

  final SupportDataModel _value;
  // ignore: unused_field
  final $Res Function(SupportDataModel) _then;

  @override
  $Res call({
    Object? supportedCodes = freezed,
  }) {
    return _then(_value.copyWith(
      supportedCodes: supportedCodes == freezed
          ? _value.supportedCodes
          : supportedCodes // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc
abstract class _$$_SupportDataModelCopyWith<$Res>
    implements $SupportDataModelCopyWith<$Res> {
  factory _$$_SupportDataModelCopyWith(
          _$_SupportDataModel value, $Res Function(_$_SupportDataModel) then) =
      __$$_SupportDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "supported_codes") List<List<String>> supportedCodes});
}

/// @nodoc
class __$$_SupportDataModelCopyWithImpl<$Res>
    extends _$SupportDataModelCopyWithImpl<$Res>
    implements _$$_SupportDataModelCopyWith<$Res> {
  __$$_SupportDataModelCopyWithImpl(
      _$_SupportDataModel _value, $Res Function(_$_SupportDataModel) _then)
      : super(_value, (v) => _then(v as _$_SupportDataModel));

  @override
  _$_SupportDataModel get _value => super._value as _$_SupportDataModel;

  @override
  $Res call({
    Object? supportedCodes = freezed,
  }) {
    return _then(_$_SupportDataModel(
      supportedCodes: supportedCodes == freezed
          ? _value._supportedCodes
          : supportedCodes // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SupportDataModel implements _SupportDataModel {
  _$_SupportDataModel(
      {@JsonKey(name: "supported_codes")
          required final List<List<String>> supportedCodes})
      : _supportedCodes = supportedCodes;

  factory _$_SupportDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SupportDataModelFromJson(json);

  final List<List<String>> _supportedCodes;
  @override
  @JsonKey(name: "supported_codes")
  List<List<String>> get supportedCodes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedCodes);
  }

  @override
  String toString() {
    return 'SupportDataModel(supportedCodes: $supportedCodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportDataModel &&
            const DeepCollectionEquality()
                .equals(other._supportedCodes, _supportedCodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_supportedCodes));

  @JsonKey(ignore: true)
  @override
  _$$_SupportDataModelCopyWith<_$_SupportDataModel> get copyWith =>
      __$$_SupportDataModelCopyWithImpl<_$_SupportDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportDataModelToJson(
      this,
    );
  }
}

abstract class _SupportDataModel implements SupportDataModel {
  factory _SupportDataModel(
          {@JsonKey(name: "supported_codes")
              required final List<List<String>> supportedCodes}) =
      _$_SupportDataModel;

  factory _SupportDataModel.fromJson(Map<String, dynamic> json) =
      _$_SupportDataModel.fromJson;

  @override
  @JsonKey(name: "supported_codes")
  List<List<String>> get supportedCodes;
  @override
  @JsonKey(ignore: true)
  _$$_SupportDataModelCopyWith<_$_SupportDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
