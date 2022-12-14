import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:food_nutrition/presentation/nutrition_screen.dart';
import 'package:food_nutrition/presentation/search_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  search,
  nutrition,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/search', routes: [
    GoRoute(
        path: '/search',
        name: AppRoute.search.name,
        builder: (context, state) {
          return const SearchScreen();
        }),
    GoRoute(
        path: '/nutrition/:foodId',
        name: AppRoute.nutrition.name,
        builder: (context, state) {
          final foodId = state.params['foodId']!;
          return NutritionScreen(foodId: int.parse(foodId));
        }),
  ]);
});
