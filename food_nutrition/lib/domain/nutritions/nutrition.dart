import 'package:food_nutrition/domain/nutrients/nutrients.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'nutrition.freezed.dart';
part 'nutrition.g.dart';

@freezed
class Nutrition with _$Nutrition {
  const factory Nutrition({
    required List<Nutrients> nutrients,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, Object?> json) =>
      _$NutritionFromJson(json);
}
