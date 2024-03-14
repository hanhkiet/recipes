import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes/router.dart';

class PersonalizationPersonType extends StatefulWidget {
  const PersonalizationPersonType({super.key});

  @override
  _PersonalizationPersonTypeState createState() {
    return _PersonalizationPersonTypeState();
  }
}

class _PersonalizationPersonTypeState extends State<PersonalizationPersonType> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Are you...',
              style: Theme.of(context).textTheme.displayMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return const Card(
                    child: ListTile(
                      title: Text(
                        'List item',
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                      leading: Icon(Icons.person_outline),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          GoRouter.of(context).pushReplacement(ScreenPaths.personalizationDone);
        },
        child: const Text('What else ?'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
