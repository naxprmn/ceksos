import 'dart:convert';

ModelDtks modelfilterFromMap(String str) => ModelDtks.fromMap(json.decode(str));

class ModelDtks {
  String idDtks;
  String nik;
  String nama;
  String? bansosPbi;

  ModelDtks(
      {required this.nik,
      required this.nama,
      required this.idDtks,
      this.bansosPbi});

  Map<String, dynamic> toMap() => {
        "NIK": nik,
        "NAMA": nama,
        "ID DTKS": idDtks,
        "PBI JKN": bansosPbi ?? "-"
      };

  factory ModelDtks.fromMap(Map<String, dynamic> json) => ModelDtks(
        nik: json["NIK"],
        nama: json["NAMA"],
        idDtks: json["ID_DTKS"],
        bansosPbi: json["PBI_JKN"],
      );
}
