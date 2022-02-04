class ModelPencarian {
  String nik;
  String nama;
  String alamat;
  String? program;

  ModelPencarian(
      {required this.nik,
      required this.nama,
      required this.alamat,
      this.program});

  Map<String, dynamic> toMap() =>
      {"NIK": nik, "NAMA": nama, "ALAMAT": alamat, "PROGRAM": program};
}
