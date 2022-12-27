import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_nutrition/infrastructure/ingredients_repository.dart';
import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: const SearchFoodField(),
    );
  }
}

class SearchFoodField extends HookWidget {
  const SearchFoodField({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 500);
    final searchBarController = useTextEditingController();
    final searchText = useState('');
    useEffect(() {
      searchBarController.addListener(() {
        debouncer.run(() {
          searchText.value = searchBarController.text;
        });
      });
      return null;
    }, [searchBarController]);

    return Column(
      children: [
        TextField(
          controller: searchBarController,
        ),
        FoodList(
          seachQuery: searchBarController.text,
        )
      ],
    );
  }
}

class FoodList extends ConsumerWidget {
  const FoodList({required this.seachQuery, super.key});
  final String seachQuery;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ingredientsList = ref.watch(foodDataProvider(seachQuery));
    return ingredientsList.when(
      data: (ingredientsList) {
        return Expanded(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: ingredientsList.results.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Text(ingredientsList.results[index].name);
            },
          ),
        );
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
      loading: () => const CircularProgressIndicator(),
    );
  }
}

class Debouncer {
  Debouncer({required this.milliseconds});
  final int milliseconds;
  Timer? _timer;
  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
