import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../router.dart';

class PersonalizationIntroductionScreen extends StatelessWidget {
  const PersonalizationIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Let\'s me \n know \n something \n about you \n first',
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          GoRouter.of(context)
              .pushReplacement(ScreenPaths.personalizationHeight);
        },
        child: const Text('Okay'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
