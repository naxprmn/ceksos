import 'package:ceksos/models/model_capil.dart';
import 'package:ceksos/models/model_dtks.dart';
import 'package:ceksos/models/model_filter.dart';
import 'package:ceksos/models/model_hasil_pencarian.dart';

import 'database_connection.dart';

class DatabaseNotifier {
  static Future sendHandlerNIK(String nik) async {
    //cek response capil
    var response = await DatabaseConnection.readnik(nik);
    ModelCapil capilResponse = response;
    //cek response filter
    var cekfilter = await DatabaseConnection.cekfilter(capilResponse.noKk);
    var cekdtks = await DatabaseConnection.cekdtks(capilResponse.nik);
    ModelDtks dtks = cekdtks;
    ModelFilter filter = cekfilter;
    //return hasil pencarian
    return ModelHasilPencarian(
            nama: capilResponse.namaLengkap,
            alamat: capilResponse.alamat,
            nik: capilResponse.nik,
            iddtks: dtks.idDtks,
            program: filter.program)
        .toMap();
  }

  static Future cekdtks(nik) async {
    ModelDtks response = await DatabaseConnection.cekdtks(nik);
    return response.toMap();
  }

  static sendHandlerKK(String kk) async {
    var response = await DatabaseConnection.readkk(kk);
    if (response != null) {
      return response.toMap();
    } else {}
  }
}
