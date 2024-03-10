import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAPIService {
  late final SupabaseClient client;

  SupabaseAPIService._({required this.client});

  static Future<SupabaseAPIService> create({
    required String apiUrl,
    required String anonKey,
  }) async {
    await Supabase.initialize(
      url: apiUrl,
      anonKey: anonKey,
    );

    return SupabaseAPIService._(client: Supabase.instance.client);
  }

  Future<PostgrestList> testData() async {
    final response = await client.from('test').select();
    return response;
  }
}
