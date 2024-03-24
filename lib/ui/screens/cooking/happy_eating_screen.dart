import 'package:flutter/material.dart';

class HappyEatingScreen extends StatelessWidget {
  const HappyEatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Happy eating',
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: const Text('Okay'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
