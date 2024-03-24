import 'package:flutter/cupertino.dart';
import 'package:recipes/data/recipe.dart';

class CookingLogic {
  final RecipeData data = recipesData[1];

  ValueNotifier<int> currentStep = ValueNotifier(0);

  void nextStep() {
    final nextStep = currentStep.value < data.steps.length
        ? currentStep.value + 1
        : data.steps.length;

    currentStep.value = nextStep;
  }

  bool isFinalStep() => currentStep.value == data.steps.length;
}
