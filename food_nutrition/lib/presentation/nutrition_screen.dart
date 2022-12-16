import 'package:flutter/material.dart';
import 'package:food_nutrition/presentation/nutrients_widget.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nutrition'),
      ),
      body: const NutrientsWidget(),
    );
  }
}
