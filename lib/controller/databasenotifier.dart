import 'package:ceksos/models/modelPKH.dart';
import 'package:ceksos/models/modelbansos.dart';
import 'package:ceksos/models/modelbpnt.dart';
import 'package:ceksos/models/modelbpntppkm.dart';
import 'package:ceksos/models/modelcapil.dart';
import 'package:ceksos/models/modeldtks.dart';
import 'package:ceksos/models/modelhasilpencarian.dart';
import 'package:ceksos/models/modelpbipemda.dart';

import '../services/databaseservices.dart';

class DatabaseNotifier {
  static Future<ModelHasilPencarian> mulaiPencarianNIK(
      {required String nik}) async {
    ModelCapil? response =
        await DatabaseServices.readCapil(id: nik, readby: "NIK");
    if (response != null) {
      //TODO add more bantuan here
      ModelDtks? dtks = await DatabaseServices.cekdtks(nik: response.nik);
      ModelBansos? bansos = await DatabaseServices.cekBansos(kk: response.noKk);
      ModelBansosPkh? pkh = await DatabaseServices.cekPkh(kk: response.noKk);
      ModelBansosBpnt? bpnt = await DatabaseServices.cekBpnt(kk: response.noKk);
      ModelBansosBpntPpkm? bpntppkm =
          await DatabaseServices.cekBpntPpkm(kk: response.noKk);
      ModelPbiPemda? pbiPemda =
          await DatabaseServices.cekPbiPemda(nik: response.nik);
      return ModelHasilPencarian(
        nik: response.nik,
        nama: response.namaLengkap,
        alamat:
            "${response.alamat}, RT : ${response.rt}, RW : ${response.rw}, Kelurahan ${response.kelurahan}",
        pekerjaan: response.pekerjaan,
        dtks: dtks,
        pkh: pkh,
        bpnt: bpnt,
        bpntPpkm: bpntppkm,
        bansos: bansos,
        pbiPemda: pbiPemda,
      );
    } else {
      return ModelHasilPencarian(
        nik: "Tidak Terdaftar Disdukcapil Kota Magelang",
        nama: "Tidak Terdaftar Disdukcapil Kota Magelang",
        alamat: "Tidak Terdaftar Disdukcapil Kota Magelang",
      );
    }
  }

  static Future mulaiPencarianKK({required String kk}) async {
    var response = await DatabaseServices.readCapil(id: kk, readby: "KK");
    if (response == "200") {
      ModelBansos? bansos = await DatabaseServices.cekBansos(kk: kk);
      return ModelHasilPencarian(kk: kk, bansos: bansos);
    } else {
      ModelHasilPencarian(
        nik: "Tidak Terdaftar Disdukcapil Kota Magelang",
        nama: "Tidak Terdaftar Disdukcapil Kota Magelang",
        alamat: "Tidak Terdaftar Disdukcapil Kota Magelang",
      );
    }
  }

  static Future beginPencarian({required String nik}) async {}
}
