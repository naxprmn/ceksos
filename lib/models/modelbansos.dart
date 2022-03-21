// To parse this JSON data, do
//
//     final modelBansos = modelBansosFromMap(jsonString);
import 'dart:convert';

class ModelBansos {
  ModelBansos({
    this.nik,
    this.nokk,
    this.nama,
    this.alamat,
    this.besarnya,
  });

  String? nik;
  String? nokk;
  String? nama;
  String? alamat;
  String? besarnya;

  factory ModelBansos.fromJson(String str) =>
      ModelBansos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ModelBansos.fromMap(Map<String, dynamic> json) => ModelBansos(
        nik: json["NIK"],
        nokk: json["NO_KK"],
        nama: json["NAMA"],
        alamat: json["ALAMAT"],
        besarnya: json["BESARNYA"],
      );

  Map<String, dynamic> toMap() => {
        "NIK": nik,
        "NO KK": nokk,
        "NAMA": nama,
        "ALAMAT": alamat,
        "BESARNYA": besarnya,
      };
}
