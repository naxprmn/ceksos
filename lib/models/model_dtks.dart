import 'dart:convert';

ModelDtks modelfilterFromMap(String str) => ModelDtks.fromMap(json.decode(str));

class ModelDtks {
  String idDtks;
  String nik;
  String nama;
  String? bansosBpnt;
  String? bansosPkh;
  String? bansosBpntPpkm;
  String? bansosPbi;

  ModelDtks(
      {required this.nik,
      required this.nama,
      required this.idDtks,
      this.bansosBpnt,
      this.bansosPkh,
      this.bansosBpntPpkm,
      this.bansosPbi});

  Map<String, dynamic> toMap() => {
        "NIK": nik,
        "NAMA": nama,
        "ID DTKS": idDtks,
        "BANSOS BPNT": bansosBpnt ?? "-",
        "BANSOS PKH": bansosPkh ?? "-",
        "BANSOS BPNT-PPKM": bansosBpntPpkm ?? "-",
        "PBI JKN": bansosPbi ?? "-"
      };

  factory ModelDtks.fromMap(Map<String, dynamic> json) => ModelDtks(
        nik: json["NIK"],
        nama: json["NAMA"],
        idDtks: json["ID DTKS"],
        bansosBpnt: json["BANSOS BPNT"],
        bansosBpntPpkm: json["BANSOS BPNT-PPKM"],
        bansosPkh: json["BANSOS PKH"],
        bansosPbi: json["PBI JKN"],
      );
}
