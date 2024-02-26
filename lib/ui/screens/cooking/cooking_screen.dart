import 'package:flutter/material.dart';
import 'package:recipes/data/recipe.dart';
import 'package:recipes/ui/screens/cooking/widgets/cooking_step.dart';

class CookingScreen extends StatelessWidget {
  CookingScreen({super.key});

  final RecipeData data = recipesData[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor:
                Theme.of(context).colorScheme.surface.withOpacity(.8),
            title: Text(
              'Chicken Roast',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            floating: true,
            centerTitle: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: data.steps.length,
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CookingStep(data: data.steps[index]),
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 100),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Next'),
          ),
          const SizedBox(width: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Stop'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
