import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  Separator({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1.0,
          width: 100.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).dividerColor,
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Text(title),
        const SizedBox(width: 8.0),
        Container(
          height: 1.0,
          width: 100.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).dividerColor,
            ),
          ),
        ),
      ],
    );
  }
}
