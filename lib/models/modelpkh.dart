// To parse this JSON data, do
//
//     final modelBansosPkh = modelBansosPkhFromJson(jsonString);

import 'dart:convert';

class ModelBansosPkh {
  ModelBansosPkh({
    this.noKk,
    this.nik,
    this.nama,
    this.alamat,
  });

  String? noKk;
  String? nik;
  String? nama;
  String? alamat;

  factory ModelBansosPkh.fromRawJson(String str) =>
      ModelBansosPkh.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBansosPkh.fromJson(Map<String, dynamic> json) => ModelBansosPkh(
        noKk: json["NO_KK"],
        nama: json["NAMA"],
        nik: json["NIK"],
        alamat: json["ALAMAT"],
      );

  Map<String, dynamic> toJson() => {
        "NO_KK": noKk,
        "NIK": nik,
        "NAMA": nama,
        "ALAMAT": alamat,
      };
}
