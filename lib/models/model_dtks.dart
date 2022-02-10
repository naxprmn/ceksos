import 'dart:convert';

ModelDtks modelfilterFromMap(String str) => ModelDtks.fromMap(json.decode(str));

class ModelDtks {
  String nik;
  String nama;
  String nokk;
  String idDtks;

  ModelDtks(
      {required this.nik,
      required this.nama,
      required this.nokk,
      required this.idDtks});

  Map<String, dynamic> toMap() =>
      {"NIK": nik, "NAMA": nama, "NO_KK": nokk, "ID_DTKS": idDtks};

  factory ModelDtks.fromMap(Map<String, dynamic> json) => ModelDtks(
        nik: json["NIK"],
        nama: json["NAMA"],
        nokk: json["NO_KK"],
        idDtks: json["ID_DTKS"],
      );
}
