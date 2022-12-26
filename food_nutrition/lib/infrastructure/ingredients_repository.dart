import 'package:dio/dio.dart';
import 'package:food_nutrition/domain/food/ingredients.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IngrediantsRepository {
  IngrediantsRepository({
    required this.query,
  });

  String query = '';
  late final String endpoint =
      'https://api.spoonacular.com/food/ingredients/search?query=$query&apiKey=367596b912dd4ac39934be0b3ffa55dc';

  Future<Ingredients> getIngredients() async {
    if (query.isNotEmpty) {
      Response response = await Dio().get(endpoint);
      Ingredients ingredients = Ingredients.fromJson(response.data);
      return ingredients;
    } else {
      return const Ingredients(id: 0, name: '');
    }
  }
}

final foodDataProvider =
    FutureProvider.family<Ingredients, String>((ref, query) async {
  return IngrediantsRepository(query: query).getIngredients();
});
