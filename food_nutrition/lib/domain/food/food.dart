import 'package:food_nutrition/domain/nutritions/nutrition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  const factory Food({
    required String name,
    required int id,
    required Nutrition nutrition,
  }) = _Food;

  factory Food.fromJson(Map<String, Object?> json) => _$FoodFromJson(json);
}
