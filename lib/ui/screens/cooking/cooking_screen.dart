import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:recipes/singletons.dart';
import 'package:recipes/ui/screens/cooking/widgets/cooking_step.dart';

class CookingScreen extends StatefulWidget with GetItStatefulWidgetMixin {
  CookingScreen({super.key});

  @override
  State<CookingScreen> createState() => _CookingScreenState();
}

class _CookingScreenState extends State<CookingScreen> with GetItStateMixin {
  late final currentStep = cookingLogic.currentStep..addListener(_handleChange);

  void _handleChange() => setState(() {});

  void _handleNextStep() => cookingLogic.nextStep();

  void _handleRestart() {}

  void _handleStop() {}

  void _handleFinish() {}

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
              data.title,
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: CookingStep(
                    data: data.steps[index],
                    isDone: index < currentStep.value,
                  ),
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 100),
          ),
        ],
      ),
      floatingActionButton: !cookingLogic.isFinalStep()
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _handleNextStep,
                  child: const Text('Next'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: _handleStop,
                  child: const Text('Stop'),
                ),
              ],
            )
          : ElevatedButton(
              onPressed: _handleFinish,
              child: const Text('Finish'),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
