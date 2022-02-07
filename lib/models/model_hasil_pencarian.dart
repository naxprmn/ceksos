class ModelPencarian {
  String nik;
  String nama;
  String alamat;
  String? program;
  String? dtks;

  ModelPencarian(
      {required this.nik,
      required this.nama,
      required this.alamat,
      this.program,
      this.dtks});

  Map<String, dynamic> toMap() =>
      {"NIK": nik, "NAMA": nama, "ALAMAT": alamat, "PROGRAM": program};
}
