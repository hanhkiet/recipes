import 'package:go_router/go_router.dart';
import 'package:recipes/ui/screens/cooking/cooking_screen.dart';
import 'package:recipes/ui/screens/personalization/personalization_done.dart';
import 'package:recipes/ui/screens/personalization/personalization_introduction.dart';
import 'package:recipes/ui/screens/register/change_password_screen.dart';
import 'package:recipes/ui/screens/register/forgot_password_screen.dart';
import 'package:recipes/ui/screens/register/login_screen.dart';
import 'package:recipes/ui/screens/register/register_screen.dart';
import 'package:recipes/ui/screens/register/widgets/app_scaffold.dart';

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
}

final appRouter = GoRouter(
  initialLocation: ScreenPaths.personalizationDone,
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
      ],
    ),
  ],
);
