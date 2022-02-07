import 'package:ceksos/models/model_capil.dart';
import 'package:ceksos/models/model_filter.dart';
import 'package:ceksos/models/model_pencarian.dart';

import 'database_connection.dart';

class DatabaseNotifier {
  static Future sendHandlerNIK(String nik) async {
    var response = await DatabaseConnection.readnik(nik);
    //cek response capil
    if (response != null) {
      ModelCapil capil = response;
      var ceknik = await DatabaseConnection.cekfilter(capil.noKk);
      //cek response filter
      if (ceknik != null) {
        ModelFilter filter = ceknik;
        return ModelPencarian(
                nama: capil.namaLengkap,
                alamat: capil.alamat,
                nik: capil.nik,
                program: filter.program)
            .toMap();
      } else {
        return ModelPencarian(
                nama: capil.namaLengkap,
                alamat: capil.alamat,
                nik: capil.nik,
                program: "Belum Terdaftar dalam program")
            .toMap();
      }
    } else {
      return ModelPencarian(
              nik: "Tidak terdaftar di Di Disdukcapil Kota Magelang",
              nama: "Tidak terdaftar di Di Disdukcapil Kota Magelang",
              alamat: "Tidak terdaftar di Di Disdukcapil Kota Magelang",
              program: "Tidak terdaftar di Di Disdukcapil Kota Magelang")
          .toMap();
    }
  }

  static sendHandlerKK(String kk) async {
    var response = await DatabaseConnection.readkk(kk);
    if (response != null) {
      return response.toMap();
    } else {}
  }
}
