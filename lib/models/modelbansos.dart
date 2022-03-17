// To parse this JSON data, do
//
//     final modelBansos = modelBansosFromMap(jsonString);
import 'dart:convert';

class ModelBansos {
  ModelBansos({
    this.id,
    this.nik,
    this.nama,
    this.alamat,
    this.besarnyaBantuanSosialRp,
    this.createdAt,
    this.capil,
  });

  int? id;
  String? nik;
  String? nama;
  String? alamat;
  String? besarnyaBantuanSosialRp;
  DateTime? createdAt;
  Capil? capil;

  factory ModelBansos.fromJson(String str) =>
      ModelBansos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ModelBansos.fromMap(Map<String, dynamic> json) => ModelBansos(
        id: json["ID"],
        nik: json["NIK"],
        nama: json["NAMA"],
        alamat: json["ALAMAT"],
        besarnyaBantuanSosialRp: json["BESARNYA BANTUAN SOSIAL (Rp)"],
        createdAt: DateTime.parse(json["created_at"]),
        capil: Capil.fromMap(json["CAPIL"]),
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "NIK": nik,
        "NAMA": nama,
        "ALAMAT": alamat,
        "BESARNYA BANTUAN SOSIAL (Rp)": besarnyaBantuanSosialRp,
        "created_at": createdAt?.toIso8601String() ?? "",
        "CAPIL": capil?.toMap() ?? "",
      };
}

class Capil {
  Capil({
    this.noKk,
  });

  String? noKk;

  factory Capil.fromJson(String str) => Capil.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Capil.fromMap(Map<String, dynamic> json) => Capil(
        noKk: json["NO_KK"],
      );

  Map<String, dynamic> toMap() => {
        "NO_KK": noKk,
      };
}
