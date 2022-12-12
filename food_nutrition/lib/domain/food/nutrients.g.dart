// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nutrients _$$_NutrientsFromJson(Map<String, dynamic> json) => _$_Nutrients(
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      unit: json['unit'] as String,
      percentOfDailyNeeds: (json['percentOfDailyNeeds'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NutrientsToJson(_$_Nutrients instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'unit': instance.unit,
      'percentOfDailyNeeds': instance.percentOfDailyNeeds,
    };
