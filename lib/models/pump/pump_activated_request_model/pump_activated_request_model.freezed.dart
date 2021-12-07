// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pump_activated_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PumpActivatedRequestModel _$PumpActivatedRequestModelFromJson(
    Map<String, dynamic> json) {
  return _PumpActivatedRequestModel.fromJson(json);
}

/// @nodoc
class _$PumpActivatedRequestModelTearOff {
  const _$PumpActivatedRequestModelTearOff();

  _PumpActivatedRequestModel call(
      {@JsonKey(name: 'is_active') required bool isActive}) {
    return _PumpActivatedRequestModel(
      isActive: isActive,
    );
  }

  PumpActivatedRequestModel fromJson(Map<String, Object?> json) {
    return PumpActivatedRequestModel.fromJson(json);
  }
}

/// @nodoc
const $PumpActivatedRequestModel = _$PumpActivatedRequestModelTearOff();

/// @nodoc
mixin _$PumpActivatedRequestModel {
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PumpActivatedRequestModelCopyWith<PumpActivatedRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PumpActivatedRequestModelCopyWith<$Res> {
  factory $PumpActivatedRequestModelCopyWith(PumpActivatedRequestModel value,
          $Res Function(PumpActivatedRequestModel) then) =
      _$PumpActivatedRequestModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'is_active') bool isActive});
}

/// @nodoc
class _$PumpActivatedRequestModelCopyWithImpl<$Res>
    implements $PumpActivatedRequestModelCopyWith<$Res> {
  _$PumpActivatedRequestModelCopyWithImpl(this._value, this._then);

  final PumpActivatedRequestModel _value;
  // ignore: unused_field
  final $Res Function(PumpActivatedRequestModel) _then;

  @override
  $Res call({
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PumpActivatedRequestModelCopyWith<$Res>
    implements $PumpActivatedRequestModelCopyWith<$Res> {
  factory _$PumpActivatedRequestModelCopyWith(_PumpActivatedRequestModel value,
          $Res Function(_PumpActivatedRequestModel) then) =
      __$PumpActivatedRequestModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'is_active') bool isActive});
}

/// @nodoc
class __$PumpActivatedRequestModelCopyWithImpl<$Res>
    extends _$PumpActivatedRequestModelCopyWithImpl<$Res>
    implements _$PumpActivatedRequestModelCopyWith<$Res> {
  __$PumpActivatedRequestModelCopyWithImpl(_PumpActivatedRequestModel _value,
      $Res Function(_PumpActivatedRequestModel) _then)
      : super(_value, (v) => _then(v as _PumpActivatedRequestModel));

  @override
  _PumpActivatedRequestModel get _value =>
      super._value as _PumpActivatedRequestModel;

  @override
  $Res call({
    Object? isActive = freezed,
  }) {
    return _then(_PumpActivatedRequestModel(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PumpActivatedRequestModel implements _PumpActivatedRequestModel {
  const _$_PumpActivatedRequestModel(
      {@JsonKey(name: 'is_active') required this.isActive});

  factory _$_PumpActivatedRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_PumpActivatedRequestModelFromJson(json);

  @override
  @JsonKey(name: 'is_active')
  final bool isActive;

  @override
  String toString() {
    return 'PumpActivatedRequestModel(isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PumpActivatedRequestModel &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$PumpActivatedRequestModelCopyWith<_PumpActivatedRequestModel>
      get copyWith =>
          __$PumpActivatedRequestModelCopyWithImpl<_PumpActivatedRequestModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PumpActivatedRequestModelToJson(this);
  }
}

abstract class _PumpActivatedRequestModel implements PumpActivatedRequestModel {
  const factory _PumpActivatedRequestModel(
          {@JsonKey(name: 'is_active') required bool isActive}) =
      _$_PumpActivatedRequestModel;

  factory _PumpActivatedRequestModel.fromJson(Map<String, dynamic> json) =
      _$_PumpActivatedRequestModel.fromJson;

  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$PumpActivatedRequestModelCopyWith<_PumpActivatedRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
