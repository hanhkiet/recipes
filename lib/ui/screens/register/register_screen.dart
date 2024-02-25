import 'package:flutter/material.dart';
import 'package:recipes/ui/screens/register/widgets/app_scaffold.dart';
import 'package:recipes/ui/screens/register/widgets/email_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/password_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Register', style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(height: 16.0),
          const EmailTextField(),
          const SizedBox(height: 16.0),
          const PasswordTextField(
            label: 'Password',
            helperText: 'Password must be at least 8 characters long',
          ),
          const SizedBox(height: 16.0),
          const PasswordTextField(
            label: 'Re-enter password',
            helperText: 'Passwords must match',
          ),
          const SizedBox(height: 16.0),
          Container(
            constraints: const BoxConstraints(maxWidth: 400, minWidth: 200),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Register'),
            ),
          ),
        ],
      ),
    );
  }
}
