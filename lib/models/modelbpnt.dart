// To parse this JSON data, do
//
//     final modelBansosBpnt = modelBansosBpntFromJson(jsonString);

import 'dart:convert';

class ModelBansosBpnt {
  ModelBansosBpnt({
    this.noKk,
    this.nik,
    this.nama,
    this.idDtks,
    this.bansosBpnt,
  });

  String? noKk;
  String? nik;
  String? nama;
  String? idDtks;
  String? bansosBpnt;

  factory ModelBansosBpnt.fromRawJson(String str) =>
      ModelBansosBpnt.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBansosBpnt.fromJson(Map<String, dynamic> json) =>
      ModelBansosBpnt(
        noKk: json["NO_KK"],
        nik: json["NIK"],
        nama: json["NAMA"],
        idDtks: json["ID_DTKS"],
        bansosBpnt: json["BANSOS_BPNT"],
      );

  Map<String, dynamic> toJson() => {
        "NO_KK": noKk,
        "NIK": nik,
        "NAMA": nama,
        "ID_DTKS": idDtks,
        "BPNT": bansosBpnt,
      };
}
