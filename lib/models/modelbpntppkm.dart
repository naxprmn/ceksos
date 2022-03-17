// To parse this JSON data, do
//
//     final modelBansosBpntPpkm = modelBansosBpntFromJson(jsonString);

import 'dart:convert';

class ModelBansosBpntPpkm {
  ModelBansosBpntPpkm({
    this.noKk,
    this.nik,
    this.nama,
    this.idDtks,
    this.bansosBpntPpkm,
  });

  String? noKk;
  String? nik;
  String? nama;
  String? idDtks;
  String? bansosBpntPpkm;

  factory ModelBansosBpntPpkm.fromRawJson(String str) =>
      ModelBansosBpntPpkm.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBansosBpntPpkm.fromJson(Map<String, dynamic> json) =>
      ModelBansosBpntPpkm(
        noKk: json["NO_KK"],
        nik: json["NIK"],
        nama: json["NAMA"],
        idDtks: json["ID_DTKS"],
        bansosBpntPpkm: json["BANSOS_BPNT-PPKM"],
      );

  Map<String, dynamic> toJson() => {
        "NO_KK": noKk,
        "NIK": nik,
        "NAMA": nama,
        "ID_DTKS": idDtks,
        "BPNT-PPKM": bansosBpntPpkm,
      };
}
