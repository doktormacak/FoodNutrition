import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_nutrition/infrastructure/food_repository.dart';

class NutrientsWidget extends ConsumerWidget {
  const NutrientsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foodData = ref.watch(foodDataProvider);
    return foodData.when(
      data: (food) {
        return Column(
          children: [
            Text(food.name),
          ],
        );
      },
      error: (error, _) => const Text('error'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
