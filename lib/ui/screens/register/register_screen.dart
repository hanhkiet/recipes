import 'package:flutter/material.dart';
import 'package:recipes/singleton.dart';
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
            onChanged: _handlePasswordChanged,
          ),
          const SizedBox(height: 16.0),
          PasswordTextField(
            initialValue: accountLogic.reEnterPassword,
            label: 'Re-enter password',
            emptyErrorMessage: 'Please enter confirm password',
            invalidErrorMessage: 'Password does not match',
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

  String _handleEmailChanged(String value) => accountLogic.email = value;

  String _handlePasswordChanged(String value) => accountLogic.password = value;
}
