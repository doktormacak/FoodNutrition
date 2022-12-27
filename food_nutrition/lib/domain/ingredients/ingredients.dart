import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ingredients.freezed.dart';
part 'ingredients.g.dart';

@freezed
class Ingredients with _$Ingredients {
  const factory Ingredients({
    required int id,
    required String name,
  }) = _Ingredients;

  factory Ingredients.fromJson(Map<String, Object?> json) =>
      _$IngredientsFromJson(json);
}
