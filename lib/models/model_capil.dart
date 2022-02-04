// To parse this JSON data, do
//
//     final modelCapil = modelCapilFromMap(jsonString);

import 'dart:convert';

ModelCapil modelCapilFromMap(String str) =>
    ModelCapil.fromMap(json.decode(str));

String modelCapilToMap(ModelCapil data) => json.encode(data.toMap());

class ModelCapil {
  ModelCapil({
    required this.nik,
    required this.noKk,
    required this.namaLengkap,
    required this.tempatLahir,
    required this.tanggalLahir,
    required this.jk,
    required this.alamat,
    required this.rw,
    required this.rt,
    required this.kelurahan,
    required this.agama,
    required this.pendidikan,
    required this.pekerjaan,
    required this.status,
    required this.shdk,
  });

  String nik;
  String noKk;
  String namaLengkap;
  String tempatLahir;
  DateTime tanggalLahir;
  String jk;
  String alamat;
  String rw;
  String rt;
  String kelurahan;
  String agama;
  String pendidikan;
  String pekerjaan;
  String status;
  String shdk;

  factory ModelCapil.fromMap(Map<String, dynamic> json) => ModelCapil(
        nik: json["NIK"],
        noKk: json["NO_KK"],
        namaLengkap: json["NAMA_LENGKAP"],
        tempatLahir: json["TEMPAT_LAHIR"],
        tanggalLahir: DateTime.parse(json["TANGGAL_LAHIR"]),
        jk: json["JK"],
        alamat: json["ALAMAT"],
        rw: json["RW"],
        rt: json["RT"],
        kelurahan: json["KELURAHAN"],
        agama: json["AGAMA"],
        pendidikan: json["PENDIDIKAN"],
        pekerjaan: json["PEKERJAAN"],
        status: json["STATUS"],
        shdk: json["SHDK"],
      );

  Map<String, dynamic> toMap() => {
        "NIK": nik,
        "NO_KK": noKk,
        "NAMA_LENGKAP": namaLengkap,
        "TEMPAT_LAHIR": tempatLahir,
        "TANGGAL_LAHIR":
            "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}",
        "JK": jk,
        "ALAMAT": alamat,
        "RW": rw,
        "RT": rt,
        "KELURAHAN": kelurahan,
        "AGAMA": agama,
        "PENDIDIKAN": pendidikan,
        "PEKERJAAN": pekerjaan,
        "STATUS": status,
        "SHDK": shdk,
      };
}
