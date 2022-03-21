// To parse this JSON data, do
//
//     final modelKjs = modelKjsFromJson(jsonString);
import 'dart:convert';

class ModelKjs {
  ModelKjs({
    this.no,
    this.nik,
    this.nama,
    this.alamat,
    this.namaPasangan,
    this.keterangan,
    this.noKk,
  });

  String? no;
  String? nik;
  String? nama;
  String? alamat;
  String? namaPasangan;
  String? keterangan;
  String? noKk;

  factory ModelKjs.fromRawJson(String str) =>
      ModelKjs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelKjs.fromJson(Map<String, dynamic> json) => ModelKjs(
        no: json["NO"],
        nik: json["NIK"],
        nama: json["NAMA"],
        alamat: json["ALAMAT"],
        namaPasangan: json["NAMA_PASANGAN"],
        keterangan: json["KETERANGAN"],
        noKk: json["NO_KK"],
      );

  Map<String, dynamic> toJson() => {
        "NO": no,
        "NIK": nik,
        "NAMA": nama,
        "ALAMAT": alamat,
        "NAMA_PASANGAN": namaPasangan,
        "KETERANGAN": keterangan,
        "NO_KK": noKk,
      };
}
