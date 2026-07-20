void bilanganGanjil() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 != 0) (print("bilangan ganjil : $i"));
  }
}

// void cetakKarakter (){
//     String hasil = "";

//   for (int i = 1; i <= 5; i++) {
//     hasil += "* ";
//   }

//   print(hasil);
// }

void cetakbawah() {
  int i = 1;
  while (i <= 5) {
    print("*");
    i++;
  }
}

void namaBerulang() {
  int i = 1;
  while (i <= 4) {
    print("Denis");
    i++;
  }
}

void perulanganList() {
  List<String> buah = ["Apel", "Jeruk", "Mangga", "Anggur"];

  for (var n in buah) {
    print("saya suka $n");
  }
}

void listDaftarBelanja() {
  List<String> barang = ["beras", "Minyak", "gula", "telur"];

  for (var bn in barang) {
    print("item ke-${barang.indexOf(bn) + 1}: $bn");
  }
}

void main() {
  bilanganGanjil();
  // cetakKarakter();
  namaBerulang();
  perulanganList();
  listDaftarBelanja();
  cetakbawah();
}
