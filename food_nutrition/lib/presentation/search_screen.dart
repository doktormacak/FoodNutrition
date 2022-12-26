// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_nutrition/routing/app_router.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Search')),
        body: Center(
          child: Column(
            children: [
              const SearchFoodField(),
              ElevatedButton(
                child: const Text('Food'),
                onPressed: () => context.goNamed(
                  AppRoute.nutrition.name,
                  params: {'id': '123'},
                ),
              ),
            ],
          ),
        ));
  }
}

class SearchFoodField extends HookConsumerWidget {
  const SearchFoodField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchBarController = useTextEditingController();
    useListenable(searchBarController);

    final ingrediants = ref.watch(foodDataProvider(searchBarController.text));
    return ingrediants.when(
      data: (ingrediants) {
        return Column(
          children: [
            TextField(
              controller: searchBarController,
            ),
            Text(searchBarController.text),
            TextButton(
                onPressed: () {
                  ingrediants.getIngrediants();
                },
                child: Text('getFuture'))
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) {
        return Text(error.toString());
      },
      loading: () {
        return CircularProgressIndicator();
      },
    );
  }
}

class IngrediantsRepository {
  IngrediantsRepository({
    required this.query,
  });

  final String query;
  late final String endpoint =
      'https://api.spoonacular.com/food/ingredients/search?query=$query&apiKey=367596b912dd4ac39934be0b3ffa55dc';

  Future<String> getIngrediants() async {
    Response response = await Dio().get(endpoint);
    print(response);
    return 'response.data';
  }
}

final foodDataProvider =
    FutureProvider.family<IngrediantsRepository, String>((ref, query) async {
  return IngrediantsRepository(query: query);
});
