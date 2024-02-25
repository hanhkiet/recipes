import 'package:flutter/material.dart';
import 'package:recipes/data/recipe_step.dart';

class CookingStep extends StatelessWidget {
  const CookingStep({
    super.key,
    required this.data,
  });

  final RecipeStepData data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // contentPadding: const EdgeInsets.all(4),
        title: Text(data.title, style: Theme.of(context).textTheme.bodyLarge),
        subtitle: Text(data.description,
            style: Theme.of(context).textTheme.bodyMedium),
        leading: const CircleAvatar(
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}
