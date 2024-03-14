import 'package:get_it/get_it.dart';
import 'package:recipes/logic/personalization_logic.dart';
import 'package:recipes/logic/registering_logic.dart';
import 'package:recipes/logic/setting_logic.dart';
import 'package:recipes/logic/supabase_api_service.dart';

SupabaseAPIService get supabaseAPIService => GetIt.I<SupabaseAPIService>();

PersonalizationLogic get personalizationLogic =>
    GetIt.I<PersonalizationLogic>();

RegisteringLogic get registeringLogic => GetIt.I<RegisteringLogic>();

SettingLogic get settingLogic => GetIt.I<SettingLogic>();
