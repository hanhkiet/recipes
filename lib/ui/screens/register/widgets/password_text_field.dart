import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    this.label,
    this.helperText,
  });

  final String? label;
  final String? helperText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 6) {
          return 'Your password length must be greater than 6';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        prefixIcon: const Icon(Icons.password_outlined),
        suffixIcon: const Icon(Icons.visibility_off),
        helperText: helperText ?? '',
      ),
    );
  }
}
