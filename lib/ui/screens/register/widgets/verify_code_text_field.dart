import 'package:flutter/material.dart';

class VerifyCodeTextField extends StatelessWidget {
  const VerifyCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Verify code',
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        prefixIcon: const Icon(Icons.numbers),
        suffixIcon: const TextButton(
          onPressed: null,
          child: Text('Send code'),
        ),
        helperText: 'Entered code does not match the sent code',
      ),
    );
  }
}
