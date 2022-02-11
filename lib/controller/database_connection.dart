import 'dart:convert';

import 'package:ceksos/models/model_capil.dart';
import 'package:ceksos/models/model_dtks.dart';
import 'package:ceksos/models/model_filter.dart';
import 'package:ceksos/utils/key.dart';
import 'package:supabase/supabase.dart';

class DatabaseConnection {
  static Future readnik(String nik) async {
    //query data dengan single query agar tidak menjadi list saat di fetch
    //jika data lebih dari satu dan membutuhkan dalam bentuk list
    //gunakan loop
    //getting data form list []
    //for (var i in response.data) {
    //a = modelCapilFromMap(jsonEncode(i));
    //return a;
    //}
    final client = SupabaseClient(dbUrl, dbKey);
    final response = await client
        .from(tableCapil)
        .select()
        .eq('NIK', nik)
        .limit(1)
        .single()
        .execute();
    if (response.hasError) {
      return null;
    } else {
      ModelCapil model = ModelCapil.fromMap(response.data);
      return model;
    }
  }

  static Future<ModelFilter> cekfilter(String kk) async {
    final client = SupabaseClient(dbUrl, dbKey);
    //query data dengan single query agar tidak menjadi list saat di fetch
    //jika data lebih dari satu dan membutuhkan dalam bentuk list
    //gunakan loop
    //getting data form list []
    //for (var i in response.data) {
    //a = modelCapilFromMap(jsonEncode(i));
    //return a;
    //}
    final response = await client
        .from(tablefilter)
        .select()
        .eq('NO_KK', kk)
        .limit(1)
        .single()
        .execute();
    if (response.hasError) {
      String nullresponse = "Belum Terdaftar Program";
      //return null value jika tidak mendapat bantuan
      return ModelFilter(
          nik: nullresponse, nokk: nullresponse, program: nullresponse);
    } else {
      ModelFilter model = ModelFilter.fromMap(response.data);
      //return bantuan dalam model bantuan
      return model;
    }
  }

  static Future<ModelDtks> cekdtks(String nik) async {
    final client = SupabaseClient(dbUrl, dbKey);
    //query data dengan single query agar tidak menjadi list saat di fetch
    //jika data lebih dari satu dan membutuhkan dalam bentuk list
    //gunakan loop
    //getting data form list []
    //for (var i in response.data) {
    //a = modelCapilFromMap(jsonEncode(i));
    //return a;
    //}
    final response = await client
        .from("3371")
        .select()
        .eq('NIK', nik)
        .limit(1)
        .single()
        .execute();
    if (response.hasError) {
      String nullresponse = "Belum Terdaftar DTKS";
      //return null value jika tidak mendapat bantuan
      return ModelDtks(
          nik: nullresponse, nama: nullresponse, idDtks: nullresponse);
    } else {
      ModelDtks model = ModelDtks.fromMap(response.data);
      //return bantuan dalam model bantuan
      return model;
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
