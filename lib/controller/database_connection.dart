import 'dart:convert';

import 'package:ceksos/models/model_capil.dart';
import 'package:ceksos/models/model_filter.dart';
import 'package:ceksos/utils/key.dart';
import 'package:supabase/supabase.dart';

class DatabaseConnection {
  static Future readnik(String nik) async {
    late ModelCapil a;
    final client = SupabaseClient(dbUrl, dbKey);
    final response =
        await client.from(tableCapil).select().eq('NIK', nik).execute();
    if (response.hasError) {
      return null;
    }
    //getting data form list []
    for (var i in response.data) {
      //convert data to model capil
      a = modelCapilFromMap(jsonEncode(i));

      return a;
    }
  }

  static Future cekfilter(String kk) async {
    final client = SupabaseClient(dbUrl, dbKey);
    final response =
        await client.from(tablefilter).select().eq('NO_KK', kk).execute();
    if (response.hasError) {
      //return null value jika tidak mendapat bantuan
      return null;
    } else {
      //return bantuan dalam model bantuan
      ModelFilter a;
      for (var i in response.data) {
        //convert data to model capil
        a = modelfilterFromMap(jsonEncode(i));

        return a;
      }
    }
  }

  static Future readkk(String kk) async {
    late ModelCapil a;
    final client = SupabaseClient(dbUrl, dbKey);
    final response =
        await client.from(tableCapil).select().eq('NO_KK', kk).execute();
    if (response.hasError) {
      return response.status;
    }
    //getting data form list []
    for (var i in response.data) {
      a = modelCapilFromMap(jsonEncode(i));

      return a;
    }
  }
}
