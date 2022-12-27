import 'package:dio/dio.dart';
import 'package:food_nutrition/domain/ingredients/ingredients.dart';
import 'package:food_nutrition/domain/ingredients_list/ingredients_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IngrediantsRepository {
  IngrediantsRepository({
    required this.query,
  });

  String query = '';
  late final String endpoint =
      'https://api.spoonacular.com/food/ingredients/search?query=$query&apiKey=367596b912dd4ac39934be0b3ffa55dc';

  Future<IngredientsList> getIngredients() async {
    if (query.isNotEmpty) {
      Response response = await Dio().get(endpoint);
      print(response.data);
      IngredientsList ingredientsList = IngredientsList.fromJson(response.data);
      return ingredientsList;
    } else {
      return const IngredientsList(results: [Ingredients(name: '', id: 0)]);
    }
  }
}

final foodDataProvider =
    FutureProvider.family<IngredientsList, String>((ref, query) async {
  return IngrediantsRepository(query: query).getIngredients();
});
