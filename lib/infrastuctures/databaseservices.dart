import 'package:ceksos/constant/dbconst.dart';
import 'package:supabase/supabase.dart';

class DatabaseServices {
  DatabaseServices({required this.client});
  final SupabaseClient client;

  Future getBantuan({required String nik}) async {
    final response = await client.from(DbConstant.dbPrimaryName).select().like("nik", nik);
    return response;
  }
}
