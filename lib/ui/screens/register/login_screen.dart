import 'package:flutter/material.dart';
import 'package:recipes/ui/screens/register/widgets/app_scaffold.dart';
import 'package:recipes/ui/screens/register/widgets/email_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/password_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/separator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 16.0),
          const EmailTextField(),
          const SizedBox(height: 16.0),
          const PasswordTextField(),
          const SizedBox(height: 16.0),
          Container(
            constraints: const BoxConstraints(maxWidth: 400, minWidth: 200),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
          ),
          const SizedBox(height: 16.0),
          Separator(title: 'OR'),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.facebook),
                iconSize: 32.0,
              ),
              const SizedBox(width: 16.0),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.facebook),
                iconSize: 32.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
