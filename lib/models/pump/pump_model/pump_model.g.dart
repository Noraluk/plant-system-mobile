// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pump_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PumpModel _$$_PumpModelFromJson(Map<String, dynamic> json) => _$_PumpModel(
      id: json['id'] as int,
      isActive: json['is_active'] as bool,
      isWorking: json['is_working'] as bool,
      isAsk: json['is_ask'] as bool,
    );

Map<String, dynamic> _$$_PumpModelToJson(_$_PumpModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_working': instance.isWorking,
      'is_ask': instance.isAsk,
    };
