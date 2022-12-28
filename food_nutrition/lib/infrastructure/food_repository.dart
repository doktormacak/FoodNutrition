import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:food_nutrition/domain/food/food.dart';

class FoodRepository {
  FoodRepository({
    required this.foodQuery,
  });
  String foodQuery = '';

  late final String endpoint =
      'https://api.spoonacular.com/food/ingredients/$foodQuery/information?amount=1&apiKey=367596b912dd4ac39934be0b3ffa55dc';
  Future<Food> getNutrition() async {
    Response response = await Dio().get(endpoint);
    Food food = Food.fromJson(response.data);
    return food;
  }
}

final foodDataProvider =
    FutureProvider.family<Food, String>((ref, foodQuery) async {
  return FoodRepository(foodQuery: foodQuery).getNutrition();
});
