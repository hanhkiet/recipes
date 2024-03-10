import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes/main.dart';
import 'package:recipes/ui/screens/cooking/cooking_screen.dart';
import 'package:recipes/ui/screens/personalization/personalization_done.dart';
import 'package:recipes/ui/screens/personalization/personalization_introduction.dart';
import 'package:recipes/ui/screens/register/change_password_screen.dart';
import 'package:recipes/ui/screens/register/forgot_password_screen.dart';
import 'package:recipes/ui/screens/register/login_screen.dart';
import 'package:recipes/ui/screens/register/register_screen.dart';
import 'package:recipes/ui/screens/register/widgets/app_scaffold.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ScreenPaths {
  static String splash = '/';
  static String intro = '/intro';
  static String login = '/login';
  static String register = '/register';
  static String forgotPassword = '/forgot-password';
  static String changePassword = '/change-password';
  static String personalizationIntroduction = '/personalization-introduction';
  static String personalizationDone = '/personalization-done';
  static String cooking = '/cooking';
  static String testData = '/test-data';
}

final appRouter = GoRouter(
  initialLocation: ScreenPaths.testData,
  routes: [
    ShellRoute(
      builder: (context, router, navigator) {
        return AppScaffold(child: navigator);
      },
      routes: [
        GoRoute(
            path: ScreenPaths.register,
            builder: (context, state) => const RegisterScreen()),
        GoRoute(
            path: ScreenPaths.login,
            builder: (context, state) => const LoginScreen()),
        GoRoute(
            path: ScreenPaths.forgotPassword,
            builder: (context, state) => const ForgotPasswordScreen()),
        GoRoute(
            path: ScreenPaths.changePassword,
            builder: (context, state) => const ChangePasswordScreen()),
        GoRoute(
            path: ScreenPaths.personalizationIntroduction,
            builder: (context, state) =>
                const PersonalizationIntroductionScreen()),
        GoRoute(
            path: ScreenPaths.personalizationDone,
            builder: (context, state) => const PersonalizationDoneScreen()),
        GoRoute(
            path: ScreenPaths.cooking,
            builder: (context, state) => CookingScreen()),
        GoRoute(
          path: ScreenPaths.testData,
          builder: (context, state) => FutureBuilder<PostgrestList>(
            future: supabaseAPIService.testData(),
            builder: (builderContext, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              if (snapshot.hasData) {
                final data = snapshot.data!;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return ListTile(
                      title: Text(item['id'] as String),
                      subtitle: Text(item['created_at'] as String),
                    );
                  },
                );
              }

              return const Center(child: Text('Data loaded'));
            },
          ),
        ),
      ],
    ),
  ],
);
