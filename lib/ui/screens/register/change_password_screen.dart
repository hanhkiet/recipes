import 'package:flutter/material.dart';
import 'package:recipes/ui/screens/register/widgets/app_scaffold.dart';
import 'package:recipes/ui/screens/register/widgets/password_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Change Password',
              style: Theme.of(context).textTheme.displaySmall),
          const SizedBox(height: 16),
          const PasswordTextField(
            label: 'New password',
            helperText: 'Password must be at least 8 characters long',
          ),
          const SizedBox(height: 16),
          const PasswordTextField(
            label: 'Confirm password',
            helperText: 'Password does not match',
          ),
          const SizedBox(height: 16),
          Container(
            constraints: const BoxConstraints(maxWidth: 400, minWidth: 200),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Change password'),
            ),
          ),
        ],
      ),
    );
  }
}
