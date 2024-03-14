import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../router.dart';

class PersonalizationWeight extends StatefulWidget {
  const PersonalizationWeight({super.key});

  @override
  _PersonalizationWeightState createState() {
    return _PersonalizationWeightState();
  }
}

class _PersonalizationWeightState extends State<PersonalizationWeight> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(
          'What is your \n weight ?',
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          GoRouter.of(context)
              .pushReplacement(ScreenPaths.personalizationPersonType);
        },
        child: const Text('What else ?'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
