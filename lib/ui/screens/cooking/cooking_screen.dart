import 'package:flutter/material.dart';
import 'package:recipes/singletons.dart';
import 'package:recipes/ui/screens/cooking/widgets/cooking_step.dart';

class CookingScreen extends StatelessWidget {
  const CookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = cookingLogic.data;

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
            onPressed: () {
              appThemeProvider.toggleTheme();
            },
            child: const Text('Stop'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
