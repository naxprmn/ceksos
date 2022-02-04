import 'dart:convert';

ModelFilter modelfilterFromMap(String str) =>
    ModelFilter.fromMap(json.decode(str));

class ModelFilter {
  String nik;
  String nokk;
  String program;

  ModelFilter({required this.nik, required this.nokk, required this.program});

  Map<String, dynamic> toMap() =>
      {"NIK": nik, "NO_KK": nokk, "PROGRAM": program};

  factory ModelFilter.fromMap(Map<String, dynamic> json) => ModelFilter(
        nik: json["NIK"],
        nokk: json["NO_KK"],
        program: json["PROGRAM"],
      );
}
