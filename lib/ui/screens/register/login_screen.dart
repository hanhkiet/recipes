import 'package:flutter/material.dart';
import 'package:recipes/singleton.dart';
import 'package:recipes/ui/screens/register/widgets/email_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/password_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/separator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 16.0),
          EmailTextField(
            initialValue: accountLogic.email,
            emptyErrorMessage: 'Please enter your email',
            invalidErrorMessage: 'Email is not valid (e.g. john.doe@mail.com)!',
            onChanged: _handleEmailChanged,
          ),
          const SizedBox(height: 16.0),
          PasswordTextField(
            initialValue: accountLogic.password,
            label: 'Password',
            emptyErrorMessage: 'Please enter your password',
            invalidErrorMessage: 'Password length must be greater than 6!',
            onChanged: _handlePasswordChange,
          ),
          const SizedBox(height: 16.0),
          Container(
            constraints: const BoxConstraints(maxWidth: 400, minWidth: 200),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
          ),
          const SizedBox(height: 16.0),
          const Separator(title: 'OR'),
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

  String _handleEmailChanged(String value) => accountLogic.email = value;

  String _handlePasswordChange(String value) => accountLogic.password = value;
}
