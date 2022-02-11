class ModelHasilPencarian {
  String nik;
  String nama;
  String alamat;
  String? program;
  String? iddtks;

  ModelHasilPencarian(
      {required this.nik,
      required this.nama,
      required this.alamat,
      this.program,
      this.iddtks});

  Map<String, dynamic> toMap() => {
        "NIK": nik,
        "NAMA": nama,
        "ALAMAT": alamat,
        "PROGRAM": program,
        "DTKS": iddtks
      };
}
