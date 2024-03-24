import 'package:get_it/get_it.dart';
import 'package:recipes/logic/account_logic.dart';
import 'package:recipes/logic/app_theme_provider.dart';
import 'package:recipes/logic/cooking_logic.dart';
import 'package:recipes/logic/personalization_logic.dart';
import 'package:recipes/logic/setting_logic.dart';
import 'package:recipes/logic/supabase_api_service.dart';

SupabaseAPIService get supabaseAPIService => GetIt.I<SupabaseAPIService>();

PersonalizationLogic get personalizationLogic =>
    GetIt.I<PersonalizationLogic>();

AccountLogic get accountLogic => GetIt.I<AccountLogic>();

SettingLogic get settingLogic => GetIt.I<SettingLogic>();

CookingLogic get cookingLogic => GetIt.I<CookingLogic>();

AppThemeProvider get appThemeProvider => GetIt.I<AppThemeProvider>();
