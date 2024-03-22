import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });
  final _emailPattern = r'^[^\.\s][\w\-\.{2,}]+@([\w-]+\.)+[\w-]{2,}$';

  @override
  Widget build(BuildContext context) {
    final emailRegex = RegExp(_emailPattern);
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        if (!emailRegex.hasMatch(value)) {
          return 'Email format is wrong !';
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
