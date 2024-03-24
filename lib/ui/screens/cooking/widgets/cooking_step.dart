import 'package:flutter/material.dart';
import 'package:recipes/data/recipe_step.dart';

class CookingStep extends StatefulWidget {
  const CookingStep({
    super.key,
    required this.data,
    required this.isDone,
  });

  final RecipeStepData data;
  final bool isDone;

  @override
  State<CookingStep> createState() => _CookingStepState();
}

class _CookingStepState extends State<CookingStep> {
  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: widget.isDone ? Colors.blue : Colors.white,
      child: ListTile(
        title: Text(
          widget.data.title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        subtitle: Text(
          widget.data.description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: widget.isDone
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
