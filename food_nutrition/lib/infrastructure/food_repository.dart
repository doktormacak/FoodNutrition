import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_nutrition/domain/food/food.dart';

class FoodRepository {
  String endpoint =
      'https://api.spoonacular.com/food/ingredients/9040/information?amount=1&apiKey=367596b912dd4ac39934be0b3ffa55dc';
  Future<Food> getNutrition() async {
    Response response = await Dio().get(endpoint);
    Food food = Food.fromJson(response.data);
    print(food);
    return food;
  }
}

final foodRepoProvider = Provider<FoodRepository>(
  (ref) => FoodRepository(),
);

final foodDataProvider = FutureProvider<Food>((ref) async {
  return ref.read(foodRepoProvider).getNutrition();
});
