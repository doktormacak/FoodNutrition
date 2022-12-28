import 'package:flutter/material.dart';
import 'package:food_nutrition/presentation/nutrients_widget.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key, required this.foodId});
  final int foodId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nutrition'),
      ),
      body: NutrientsWidget(foodId: foodId),
    );
  }
}
