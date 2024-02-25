import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
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
        helperText: 'Password must be at least 8 characters long',
      ),
    );
  }
}
