import 'package:flutter/material.dart';
import 'package:recipes/ui/screens/register/widgets/email_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/password_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/separator.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.3,
          ),
          Text(
            'Login',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 16.0),
          Form(
            key: _key,
            child: const Column(
              children: [
                EmailTextField(),
                SizedBox(height: 16.0),
                PasswordTextField(
                  label: 'Password',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            constraints: const BoxConstraints(maxWidth: 400, minWidth: 200),
            child: ElevatedButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  // validate user...
                }
              },
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
}
