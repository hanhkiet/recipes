import 'package:flutter/material.dart';
import 'package:recipes/utils/regex.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.label,
    this.emptyErrorMessage,
    this.invalidErrorMessage,
    this.initialValue,
    this.onChanged,
  });

  final String? label;

  final String? emptyErrorMessage;
  final String? invalidErrorMessage;
  final Function(String value)? onChanged;

  final String? initialValue;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isPasswordShow = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      obscureText: !_isPasswordShow,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: _handleValidating,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        prefixIcon: const Icon(Icons.password_outlined),
        suffixIcon: IconButton(
          onPressed: _handleTogglingVisibility,
          icon: _isPasswordShow
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
      ),
      onChanged: widget.onChanged,
    );
  }

  String? _handleValidating(value) {
    if (value == null || value.isEmpty) {
      return widget.emptyErrorMessage;
    }

    if (!passwordRegex.hasMatch(value)) {
      return widget.invalidErrorMessage;
    }

    return null;
  }

  void _handleTogglingVisibility() => setState(() {
        _isPasswordShow = !_isPasswordShow;
      });
}
