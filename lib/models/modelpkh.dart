// To parse this JSON data, do
//
//     final modelBansosPkh = modelBansosPkhFromJson(jsonString);

import 'dart:convert';

class ModelBansosPkh {
  ModelBansosPkh({
    this.noKk,
    this.nik,
    this.nama,
    this.idDtks,
    this.bansosPkh,
  });

  String? noKk;
  String? nik;
  String? nama;
  String? idDtks;
  String? bansosPkh;

  factory ModelBansosPkh.fromRawJson(String str) =>
      ModelBansosPkh.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBansosPkh.fromJson(Map<String, dynamic> json) => ModelBansosPkh(
        noKk: json["NO_KK"],
        idDtks: json["ID_DTKS"],
        nama: json["NAMA"],
        nik: json["NIK"],
        bansosPkh: json["BANSOS_PKH"],
      );

  Map<String, dynamic> toJson() => {
        "NO_KK": noKk,
        "NIK": nik,
        "NAMA": nama,
        "ID_DTKS": idDtks,
        "PKH": bansosPkh,
      };
}
