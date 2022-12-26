// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_nutrition/infrastructure/ingredients_repository.dart';
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
    final ingredients = ref.watch(foodDataProvider(searchBarController.text));
    return ingredients.when(
      data: (ingredients) {
        return Column(
          children: [
            TextField(
              controller: searchBarController,
            ),
            Text(ingredients.name),
          ],
        );
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
      loading: () => const CircularProgressIndicator(),
    );
  }
}
