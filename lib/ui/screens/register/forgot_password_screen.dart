import 'package:flutter/material.dart';
import 'package:recipes/ui/screens/register/widgets/email_text_field.dart';
import 'package:recipes/ui/screens/register/widgets/verify_code_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Forgot password',
              style: Theme.of(context).textTheme.displaySmall),
          const SizedBox(height: 16),
          const EmailTextField(),
          const SizedBox(height: 16),
          const VerifyCodeTextField(),
          const SizedBox(height: 16),
          Container(
            constraints: const BoxConstraints(maxWidth: 400, minWidth: 200),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Verify'),
            ),
          ),
        ],
      ),
    );
  }
}
