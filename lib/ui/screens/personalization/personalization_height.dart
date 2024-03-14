import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes/router.dart';

class PersonalizationHeight extends StatefulWidget {
  const PersonalizationHeight({super.key});

  @override
  _PersonalizationHeightState createState() {
    return _PersonalizationHeightState();
  }
}

class _PersonalizationHeightState extends State<PersonalizationHeight> {
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
          'What is your \n height ?',
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          GoRouter.of(context)
              .pushReplacement(ScreenPaths.personalizationWeight);
        },
        child: const Text('What else ?'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
