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
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int _heightValue = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'What is your \n height ?',
            style: Theme.of(context).textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
              key: _formKey,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your height!';
                  }
                  _heightValue = int.tryParse(value) ?? 0;
                  if (_heightValue <= 0) {
                    return 'Your height must greater than 0';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    suffixText: 'cm',
                    hintText: 'Type here...'),
              ))
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            GoRouter.of(context)
                .pushReplacement(ScreenPaths.personalizationWeight);
          }
        },
        child: const Text('What else ?'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
