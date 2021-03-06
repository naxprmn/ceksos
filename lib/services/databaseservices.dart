import 'package:ceksos/models/modelPKH.dart';
import 'package:ceksos/models/modelbansos.dart';
import 'package:ceksos/models/modelbpnt.dart';
import 'package:ceksos/models/modelbpntppkm.dart';
import 'package:ceksos/models/modelcapil.dart';
import 'package:ceksos/models/modeldtks.dart';
import 'package:ceksos/models/modelkjs.dart';
import 'package:ceksos/models/modelpbipemda.dart';
import 'package:ceksos/utils/key.dart';
import 'package:supabase/supabase.dart';

class DatabaseServices {
  static Future readCapil({required String id, required String readby}) async {
    final client = SupabaseClient(dbUrl, dbKey);
    switch (readby) {
      case "NIK":
        final response = await client
            .from("CAPIL")
            .select()
            .eq("NIK", id)
            .single()
            .execute();
        if (response.hasError) {
          return null;
        } else {
          ModelCapil model = ModelCapil.fromMap(response.data);
          return model;
        }
      case "KK":
        final response = await client
            .from("CAPIL")
            .select("NO_KK")
            .eq("NO_KK", id)
            .execute();
        if (response.hasError) {
          return null;
        } else {
          return "200";
        }
    }
  }

  static Future<ModelDtks?> cekdtks({required String nik}) async {
    final client = SupabaseClient(dbUrl, dbKey);
    final response = await client
        .from("DTKSCAPIL")
        .select("NIK,NAMA,ID_DTKS,PBI_JKN")
        .eq('NIK', nik)
        .single()
        .execute();
    if (response.data == null) {
      return null;
    } else {
      ModelDtks model = ModelDtks.fromMap(response.data);
      //return bantuan dalam model bantuan
      return model;
    }
  }

  static Future<ModelBansosPkh?> cekPkh({required String kk}) async {
    final client = SupabaseClient(dbUrl, dbKey);

    final response = await client
        .from("BANSOSPKH")
        .select()
        .eq("NO_KK", kk)
        .single()
        .execute();
    if (response.data != null) {
      return ModelBansosPkh.fromJson(response.data);
    } else {
      return null;
    }
  }

  static Future<ModelBansosBpnt?> cekBpnt({required String kk}) async {
    final client = SupabaseClient(dbUrl, dbKey);

    final response = await client
        .from("BANSOSBPNT")
        .select()
        .eq("NO_KK", kk)
        .single()
        .execute();
    if (response.data != null) {
      return ModelBansosBpnt.fromJson(response.data);
    } else {
      return null;
    }
  }

  static Future<ModelBansosBpntPpkm?> cekBpntPpkm({required String kk}) async {
    final client = SupabaseClient(dbUrl, dbKey);

    final response = await client
        .from("BANSOSBPNTPPKM")
        .select()
        .eq("NO_KK", kk)
        .single()
        .execute();
    if (response.data != null) {
      return ModelBansosBpntPpkm.fromJson(response.data);
    } else {
      return null;
    }
  }

  static Future<ModelBansos?> cekBansos({required String kk}) async {
    final client = SupabaseClient(dbUrl, dbKey);

    final response = await client
        .from("BANSOSAPBD")
        .select()
        .eq("NO_KK", kk)
        .single()
        .execute();
    if (response.data != null) {
      return ModelBansos.fromMap(response.data);
    } else {
      return null;
    }
  }

  static Future<ModelPbiPemda?> cekPbiPemda({required String nik}) async {
    final client = SupabaseClient(dbUrl, dbKey);

    final response = await client
        .from("PBIPEMDACAPIL")
        .select()
        .eq("NIK", nik)
        .single()
        .execute();
    if (response.data != null) {
      return ModelPbiPemda.fromJson(response.data);
    } else {
      return null;
    }
  }

  static Future<ModelKjs?> cekKjs({required String kk}) async {
    final client = SupabaseClient(dbUrl, dbKey);

    final response = await client
        .from("BANSOSKJS")
        .select()
        .eq("NO_KK", kk)
        .single()
        .execute();
    if (response.data != null) {
      return ModelKjs.fromJson(response.data);
    } else {
      return null;
    }
  }
}
