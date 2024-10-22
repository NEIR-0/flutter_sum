class PasienModel {
  int id;
  String nomorRm;
  String nama;
  String tanggalLahir;
  String nomorTelepon;
  String alamat;

  PasienModel({
    required this.id,
    required this.nomorRm,
    required this.nama,
    required this.tanggalLahir,
    required this.nomorTelepon,
    required this.alamat,
  });
}

class PegawaiModel {
  int id;
  String nip;
  String nama;
  String tanggalLahir;
  String nomorTelepon;
  String email;
  String password;

  PegawaiModel({
    required this.id,
    required this.nip,
    required this.nama,
    required this.tanggalLahir,
    required this.nomorTelepon,
    required this.email,
    required this.password,
  });
}
