// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pump_activated_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PumpActivatedResponseModel _$PumpActivatedResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PumpActivatedResponseModel.fromJson(json);
}

/// @nodoc
class _$PumpActivatedResponseModelTearOff {
  const _$PumpActivatedResponseModelTearOff();

  _PumpActivatedResponseModel call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'is_active') required bool isActive}) {
    return _PumpActivatedResponseModel(
      id: id,
      isActive: isActive,
    );
  }

  PumpActivatedResponseModel fromJson(Map<String, Object?> json) {
    return PumpActivatedResponseModel.fromJson(json);
  }
}

/// @nodoc
const $PumpActivatedResponseModel = _$PumpActivatedResponseModelTearOff();

/// @nodoc
mixin _$PumpActivatedResponseModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PumpActivatedResponseModelCopyWith<PumpActivatedResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PumpActivatedResponseModelCopyWith<$Res> {
  factory $PumpActivatedResponseModelCopyWith(PumpActivatedResponseModel value,
          $Res Function(PumpActivatedResponseModel) then) =
      _$PumpActivatedResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id, @JsonKey(name: 'is_active') bool isActive});
}

/// @nodoc
class _$PumpActivatedResponseModelCopyWithImpl<$Res>
    implements $PumpActivatedResponseModelCopyWith<$Res> {
  _$PumpActivatedResponseModelCopyWithImpl(this._value, this._then);

  final PumpActivatedResponseModel _value;
  // ignore: unused_field
  final $Res Function(PumpActivatedResponseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PumpActivatedResponseModelCopyWith<$Res>
    implements $PumpActivatedResponseModelCopyWith<$Res> {
  factory _$PumpActivatedResponseModelCopyWith(
          _PumpActivatedResponseModel value,
          $Res Function(_PumpActivatedResponseModel) then) =
      __$PumpActivatedResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id, @JsonKey(name: 'is_active') bool isActive});
}

/// @nodoc
class __$PumpActivatedResponseModelCopyWithImpl<$Res>
    extends _$PumpActivatedResponseModelCopyWithImpl<$Res>
    implements _$PumpActivatedResponseModelCopyWith<$Res> {
  __$PumpActivatedResponseModelCopyWithImpl(_PumpActivatedResponseModel _value,
      $Res Function(_PumpActivatedResponseModel) _then)
      : super(_value, (v) => _then(v as _PumpActivatedResponseModel));

  @override
  _PumpActivatedResponseModel get _value =>
      super._value as _PumpActivatedResponseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_PumpActivatedResponseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PumpActivatedResponseModel implements _PumpActivatedResponseModel {
  const _$_PumpActivatedResponseModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'is_active') required this.isActive});

  factory _$_PumpActivatedResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PumpActivatedResponseModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;

  @override
  String toString() {
    return 'PumpActivatedResponseModel(id: $id, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PumpActivatedResponseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$PumpActivatedResponseModelCopyWith<_PumpActivatedResponseModel>
      get copyWith => __$PumpActivatedResponseModelCopyWithImpl<
          _PumpActivatedResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PumpActivatedResponseModelToJson(this);
  }
}

abstract class _PumpActivatedResponseModel
    implements PumpActivatedResponseModel {
  const factory _PumpActivatedResponseModel(
          {@JsonKey(name: 'id') required int id,
          @JsonKey(name: 'is_active') required bool isActive}) =
      _$_PumpActivatedResponseModel;

  factory _PumpActivatedResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PumpActivatedResponseModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$PumpActivatedResponseModelCopyWith<_PumpActivatedResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
