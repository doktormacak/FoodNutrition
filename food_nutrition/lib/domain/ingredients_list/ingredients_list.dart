import 'package:food_nutrition/domain/ingredients/ingredients.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ingredients_list.freezed.dart';
part 'ingredients_list.g.dart';

@freezed
class IngredientsList with _$IngredientsList {
  const factory IngredientsList({
    required List<Ingredients> results,
  }) = _IngredientsList;

  factory IngredientsList.fromJson(Map<String, Object?> json) =>
      _$IngredientsListFromJson(json);
}
