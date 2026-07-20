void main() {
  // Data mahasiswa
  int uts = 75;
  int uas = 80;
  double kehadiran = 85.0;

  // Menghitung rata-rata
  double rataRata = (uts + uas) / 2;

  // Syarat kelulusan
  bool syaratRataRata = rataRata >= 70;
  bool syaratKehadiran = kehadiran >= 75;
  bool syaratNilaiMinimal = (uts >= 60) && (uas >= 60);

  // Menggabungkan semua syarat
  bool lulus =
      syaratRataRata &&
      syaratKehadiran &&
      syaratNilaiMinimal;

  // Menampilkan hasil
  print("=== HASIL PENILAIAN MAHASISWA ===");
  print("Nilai UTS       : $uts");
  print("Nilai UAS       : $uas");
  print("Kehadiran       : $kehadiran%");
  print("Rata-rata Nilai : $rataRata");

  if (lulus) {
    print("Status          : LULUS");
  } else {
    print("Status          : TIDAK LULUS");
  }
}