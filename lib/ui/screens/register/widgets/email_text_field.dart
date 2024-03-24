import 'package:flutter/material.dart';
import 'package:recipes/utils/regex.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    this.emptyErrorMessage,
    this.invalidErrorMessage,
    this.initialValue,
    this.onChanged,
  });

  final String? emptyErrorMessage;
  final String? invalidErrorMessage;
  final String? initialValue;
  final Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: _handleValidating,
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
      onChanged: onChanged,
    );
  }

  String? _handleValidating(value) {
    if (value == null || value.isEmpty) {
      return emptyErrorMessage;
    }

    if (!emailRegex.hasMatch(value)) {
      return invalidErrorMessage;
    }

    return null;
  }
}
