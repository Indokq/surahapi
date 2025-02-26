class Surah {
  final int nomor;
  final String nama;
  final String namaLatin;
  final int jumlahAyat;
  final String tempatTurun;
  final String arti;
  final List<Ayat> ayat; // Tambahkan daftar ayat

  Surah({
    required this.nomor,
    required this.nama,
    required this.namaLatin,
    required this.jumlahAyat,
    required this.tempatTurun,
    required this.arti,
    required this.ayat,
  });

  factory Surah.fromJson(Map<String, dynamic> json) {
    var listAyat = json['ayat'] as List? ?? []; 
    List<Ayat> ayatList = listAyat.map((i) => Ayat.fromJson(i)).toList();

    return Surah(
      nomor: json['nomor'],
      nama: json['nama'],
      namaLatin: json['nama_latin'],
      jumlahAyat: json['jumlah_ayat'],
      tempatTurun: json['tempat_turun'],
      arti: json['arti'],
      ayat: ayatList, // Simpan daftar ayat
    );
  }
}

class Ayat {
  final int id;
  final int nomor;
  final String ar;
  final String idn;
  final String tr;

  Ayat({
    required this.id,
    required this.nomor,
    required this.ar,
    required this.idn,
    required this.tr,
  });

  factory Ayat.fromJson(Map<String, dynamic> json) {
    return Ayat(
      id: json['id'],
      nomor: json['nomor'],
      ar: json['ar'],
      idn: json['idn'],
      tr: json['tr'],
    );
  }
}