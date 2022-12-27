import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'nutrients.freezed.dart';
part 'nutrients.g.dart';

@freezed
class Nutrients with _$Nutrients {
  const factory Nutrients({
    required String name,
    required double amount,
    required String unit,
    required double percentOfDailyNeeds,
  }) = _Nutrients;

  factory Nutrients.fromJson(Map<String, Object?> json) =>
      _$NutrientsFromJson(json);
}
