import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:food_nutrition/infrastructure/food_repository.dart';

class NutrientsWidget extends ConsumerWidget {
  const NutrientsWidget({required this.foodId, Key? key}) : super(key: key);
  final int foodId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foodData = ref.watch(foodDataProvider(foodId.toString()));
    return foodData.when(
      data: (food) {
        return Column(
          children: [
            Text(foodId.toString()),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: food.nutrition.nutrients.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    Text(food.nutrition.nutrients[index].name),
                    Text(
                        '${food.nutrition.nutrients[index].amount} ${food.nutrition.nutrients[index].unit}'),
                    Text(
                        '${food.nutrition.nutrients[index].percentOfDailyNeeds.toString()}% of daily intake'),
                  ]);
                },
              ),
            ),
          ],
        );
      },
      error: (error, _) => Text(error.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
