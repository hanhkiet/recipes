import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    this.emptyErrorMessage,
    this.invalidErrorMessage,
    this.initialValue,
  });

  final String? emptyErrorMessage;
  final String? invalidErrorMessage;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    final emailRegex = RegExp(r'^[^.\s][\w\-.{2,}]+@([\w-]+\.)+[\w-]{2,}$');

    return TextFormField(
      initialValue: initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return emptyErrorMessage;
        }
        if (!emailRegex.hasMatch(value)) {
          return invalidErrorMessage;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        prefixIcon: const Icon(Icons.email),
      ),
    );
  }
}
