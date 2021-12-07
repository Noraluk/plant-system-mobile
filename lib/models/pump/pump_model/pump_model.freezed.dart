// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pump_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PumpModel _$PumpModelFromJson(Map<String, dynamic> json) {
  return _PumpModel.fromJson(json);
}

/// @nodoc
class _$PumpModelTearOff {
  const _$PumpModelTearOff();

  _PumpModel call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'is_active') required bool isActive,
      @JsonKey(name: 'is_working') required bool isWorking,
      @JsonKey(name: 'is_ask') required bool isAsk}) {
    return _PumpModel(
      id: id,
      isActive: isActive,
      isWorking: isWorking,
      isAsk: isAsk,
    );
  }

  PumpModel fromJson(Map<String, Object?> json) {
    return PumpModel.fromJson(json);
  }
}

/// @nodoc
const $PumpModel = _$PumpModelTearOff();

/// @nodoc
mixin _$PumpModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_working')
  bool get isWorking => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_ask')
  bool get isAsk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PumpModelCopyWith<PumpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PumpModelCopyWith<$Res> {
  factory $PumpModelCopyWith(PumpModel value, $Res Function(PumpModel) then) =
      _$PumpModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'is_working') bool isWorking,
      @JsonKey(name: 'is_ask') bool isAsk});
}

/// @nodoc
class _$PumpModelCopyWithImpl<$Res> implements $PumpModelCopyWith<$Res> {
  _$PumpModelCopyWithImpl(this._value, this._then);

  final PumpModel _value;
  // ignore: unused_field
  final $Res Function(PumpModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? isWorking = freezed,
    Object? isAsk = freezed,
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
      isWorking: isWorking == freezed
          ? _value.isWorking
          : isWorking // ignore: cast_nullable_to_non_nullable
              as bool,
      isAsk: isAsk == freezed
          ? _value.isAsk
          : isAsk // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PumpModelCopyWith<$Res> implements $PumpModelCopyWith<$Res> {
  factory _$PumpModelCopyWith(
          _PumpModel value, $Res Function(_PumpModel) then) =
      __$PumpModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'is_working') bool isWorking,
      @JsonKey(name: 'is_ask') bool isAsk});
}

/// @nodoc
class __$PumpModelCopyWithImpl<$Res> extends _$PumpModelCopyWithImpl<$Res>
    implements _$PumpModelCopyWith<$Res> {
  __$PumpModelCopyWithImpl(_PumpModel _value, $Res Function(_PumpModel) _then)
      : super(_value, (v) => _then(v as _PumpModel));

  @override
  _PumpModel get _value => super._value as _PumpModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? isWorking = freezed,
    Object? isAsk = freezed,
  }) {
    return _then(_PumpModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isWorking: isWorking == freezed
          ? _value.isWorking
          : isWorking // ignore: cast_nullable_to_non_nullable
              as bool,
      isAsk: isAsk == freezed
          ? _value.isAsk
          : isAsk // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PumpModel implements _PumpModel {
  const _$_PumpModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'is_working') required this.isWorking,
      @JsonKey(name: 'is_ask') required this.isAsk});

  factory _$_PumpModel.fromJson(Map<String, dynamic> json) =>
      _$$_PumpModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'is_working')
  final bool isWorking;
  @override
  @JsonKey(name: 'is_ask')
  final bool isAsk;

  @override
  String toString() {
    return 'PumpModel(id: $id, isActive: $isActive, isWorking: $isWorking, isAsk: $isAsk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PumpModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.isWorking, isWorking) &&
            const DeepCollectionEquality().equals(other.isAsk, isAsk));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(isWorking),
      const DeepCollectionEquality().hash(isAsk));

  @JsonKey(ignore: true)
  @override
  _$PumpModelCopyWith<_PumpModel> get copyWith =>
      __$PumpModelCopyWithImpl<_PumpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PumpModelToJson(this);
  }
}

abstract class _PumpModel implements PumpModel {
  const factory _PumpModel(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'is_active') required bool isActive,
      @JsonKey(name: 'is_working') required bool isWorking,
      @JsonKey(name: 'is_ask') required bool isAsk}) = _$_PumpModel;

  factory _PumpModel.fromJson(Map<String, dynamic> json) =
      _$_PumpModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'is_working')
  bool get isWorking;
  @override
  @JsonKey(name: 'is_ask')
  bool get isAsk;
  @override
  @JsonKey(ignore: true)
  _$PumpModelCopyWith<_PumpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
