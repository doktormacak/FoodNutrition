// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientsList _$$_IngredientsListFromJson(Map<String, dynamic> json) =>
    _$_IngredientsList(
      results: (json['results'] as List<dynamic>)
          .map((e) => Ingredients.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IngredientsListToJson(_$_IngredientsList instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
