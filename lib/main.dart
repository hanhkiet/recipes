import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:recipes/logic/account_logic.dart';
import 'package:recipes/logic/app_theme_provider.dart';
import 'package:recipes/logic/cooking_logic.dart';
import 'package:recipes/logic/personalization_logic.dart';
import 'package:recipes/logic/setting_logic.dart';
import 'package:recipes/logic/supabase_api_service.dart';
import 'package:recipes/router.dart';
import 'package:recipes/singletons.dart';

Future<void> main() async {
  await dotenv.load();

  registerServices();
  registerLogics();

  runApp(RecipesApp());
}

class RecipesApp extends StatefulWidget with GetItStatefulWidgetMixin {
  RecipesApp({super.key});

  @override
  State<RecipesApp> createState() => _RecipesAppState();
}

class _RecipesAppState extends State<RecipesApp> with GetItStateMixin {
  late final themeModeNotifier = appThemeProvider.themeModeNotifier
    ..addListener(_handleChangeThemeMode);

  void _handleChangeThemeMode() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: themeModeNotifier.value,
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
      routeInformationProvider: appRouter.routeInformationProvider,
    );
  }
}

void registerServices() {
  GetIt.I.registerSingletonAsync(() async => await SupabaseAPIService.create(
        apiUrl: dotenv.env['SUPABASE_API_URL'] ?? '',
        anonKey: dotenv.env['SUPABASE_ANON_KEY'] ?? '',
      ));
}

void registerLogics() {
  GetIt.I.registerLazySingleton<AppThemeProvider>(() => AppThemeProvider());

  GetIt.I.registerLazySingleton<PersonalizationLogic>(
      () => PersonalizationLogic());
  GetIt.I.registerLazySingleton<AccountLogic>(() => AccountLogic());
  GetIt.I.registerLazySingleton<SettingLogic>(() => SettingLogic());
  GetIt.I.registerLazySingleton<CookingLogic>(() => CookingLogic());
}
