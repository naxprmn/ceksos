// To parse this JSON data, do
//
//     final modelPbiPemda = modelPbiPemdaFromJson(jsonString);

import 'dart:convert';

class ModelPbiPemda {
  ModelPbiPemda({
    this.noKk,
    this.nik,
    this.nomorKartu,
    this.hubKeluarga,
    this.tmt,
    this.namaFaskes,
  });

  String? noKk;
  String? nik;
  String? nomorKartu;
  String? hubKeluarga;
  String? tmt;
  String? namaFaskes;

  factory ModelPbiPemda.fromRawJson(String str) =>
      ModelPbiPemda.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelPbiPemda.fromJson(Map<String, dynamic> json) => ModelPbiPemda(
        noKk: json["NO_KK"],
        nik: json["NIK"],
        nomorKartu: json["NOMOR_KARTU"],
        hubKeluarga: json["HUB_KELUARGA"],
        tmt: json["TMT"],
        namaFaskes: json["Nama_Faskes"],
      );

  Map<String, dynamic> toJson() => {
        "NO_KK": noKk,
        "NIK": nik,
        "NOMOR_KARTU": nomorKartu,
        "HUB_KELUARGA": hubKeluarga,
        "TMT": tmt,
        "Nama_Faskes": namaFaskes,
      };
}
