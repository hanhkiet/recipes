import 'package:flutter/material.dart';
import 'package:recipes/ui/screens/register/widgets/email_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/password_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Register', style: Theme.of(context).textTheme.displaySmall),
          const SizedBox(height: 16.0),
          const EmailTextField(),
          const SizedBox(height: 16.0),
          const PasswordTextField(
            label: 'Password',
          ),
          const SizedBox(height: 16.0),
          const PasswordTextField(
            label: 'Re-enter password',
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
