import 'package:flutter/material.dart';
import 'package:food_nutrition/routing/app_router.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Search')),
        body: Center(
          child: ElevatedButton(
            child: Text('Food'),
            onPressed: () => context.goNamed(
              AppRoute.nutrition.name,
              params: {'id': '123'},
            ),
          ),
        ));
  }
}
