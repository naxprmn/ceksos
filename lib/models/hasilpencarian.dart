import 'package:ceksos/models/modelPKH.dart';
import 'package:ceksos/models/modelbansos.dart';
import 'package:ceksos/models/modelbpnt.dart';
import 'package:ceksos/models/modelbpntppkm.dart';
import 'package:ceksos/models/modeldtks.dart';
import 'package:ceksos/models/modelkjs.dart';
import 'package:ceksos/models/modelpbipemda.dart';

class ModelHasilPencarian {
  String? nik;
  String? kk;
  String? nama;
  String? alamat;
  String? pekerjaan;
  ModelDtks? dtks;
  ModelBansos? bansos;
  ModelKjs? kjs;
  ModelPbiPemda? pbiPemda;
  ModelBansosPkh? pkh;
  ModelBansosBpnt? bpnt;
  ModelBansosBpntPpkm? bpntPpkm;

  ModelHasilPencarian(
      {this.nik,
      this.kk,
      this.nama,
      this.alamat,
      this.pekerjaan,
      this.dtks,
      this.bansos,
      this.kjs,
      this.pbiPemda,
      this.pkh,
      this.bpnt,
      this.bpntPpkm});

  Map<String, dynamic> toMap() => {
        "NIK": nik,
        "KK": kk,
        "NAMA": nama,
        "ALAMAT": alamat,
        "PEKERJAAN": pekerjaan,
        "DTKS": dtks,
        "PKH": pkh,
        "BPNT": bpnt,
        "BPNT-PPKM": bpntPpkm,
        "BANSOS APBD": bansos,
        "PBI APBD": pbiPemda,
        "KJS": kjs
      };
}
