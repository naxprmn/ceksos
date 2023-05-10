import 'package:ceksos/constant/dbconst.dart';
import 'package:supabase/supabase.dart';

class DatabaseServices {
  DatabaseServices({required this.client});
  final SupabaseClient client;

  Future<PostgrestListResponse> getBantuan({required String id}) async {
    PostgrestListResponse response = await client.from(DbConstant.dbPrimaryName).select().eq("id", id);
    return response;
  }
}
