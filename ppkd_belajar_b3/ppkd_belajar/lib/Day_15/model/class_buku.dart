import 'package:flutter/material.dart';

class Level3List extends StatelessWidget {
  Level3List({super.key});

  final List<BukuMajalah> daftarBukuMajalah = [
    BukuMajalah(
      nama: 'laskar Pelangi',
      gambarImg: 'assets/images/laskar.jpeg',
      deskripsi: 'Bayam hijau segar, kaya akan zat besi dan nutrisi harian.',
    ),
    BukuMajalah(
      nama: 'Filosofi Teras',
      gambarImg: 'assets/images/kangkung.jpg',
      deskripsi: 'Kangkung renyah bebas pestisida, cocok untuk tumisan.',
    ),
    BukuMajalah(
      nama: 'Bumi Manusia',
      gambarImg: 'assets/images/wortel.webp',
      deskripsi: 'Wortel manis tinggi Vitamin A, baik untuk kesehatan mata.',
    ),
    BukuMajalah(
      nama: 'Atomic Habbits',
      gambarImg: 'assets/images/brokoli.jpg',
      deskripsi: 'Superfood kaya serat dan antioksidan untuk stamina tubuh.',
    ),
    BukuMajalah(
      nama: 'Sapiens',
      gambarImg: 'assets/images/kol.jpg',
      deskripsi: 'Pilihan pas untuk campuran sup padat gizi.',
    ),
    BukuMajalah(
      nama: 'Laut Bercerita',
      gambarImg: 'assets/images/kubis.jpg',
      deskripsi: 'Kubis segar renyah, tahan lama disimpan di kulkas.',
    ),
    BukuMajalah(
      nama: '1984',
      gambarImg: 'assets/images/sawi_hijau.webp',
      deskripsi: 'Sayuran populer untuk pelengkap mie dan mie goreng.',
    ),
    BukuMajalah(
      nama: 'Cantik Itu Luka',
      gambarImg: 'assets/images/sawi.jpg',
      deskripsi:
          'Tekstur lembut dan kaya air, pas untuk masakan kimchi atau kuah.',
    ),
    BukuMajalah(
      nama: 'Tempo',
      gambarImg: 'assets/images/terong.jpg',
      deskripsi: 'Terong ungu pilihan, enak untuk balado atau olahan bakaran.',
    ),
    BukuMajalah(
      nama: 'National Graphic',
      gambarImg: 'assets/images/tomat.jpg',
      deskripsi: 'Tomat matang pohon, kaya akan likopen dan Vitamin C.',
    ),
    BukuMajalah(
      nama: 'Bobo',
      gambarImg: 'assets/images/mentimun.webp',
      deskripsi: 'Timun segar penyegar dahaga, nikmat untuk lalapan.',
    ),
    BukuMajalah(
      nama: 'Forbes',
      gambarImg: 'assets/images/buncis.jpg',
      deskripsi: 'Buncis muda manis, pas untuk hidangan tumis orak-arik.',
    ),
    BukuMajalah(
      nama: 'Trubus',
      gambarImg: 'assets/images/kacang_panjang.jpg',
      deskripsi: 'Kacang panjang pilihan terbaik untuk pencok atau pecel.',
    ),
    BukuMajalah(
      nama: 'Time',
      gambarImg: 'assets/images/labu_siam.webp',
      deskripsi: 'Labu siam manis lembut, enak untuk sayur lodeh.',
    ),
    BukuMajalah(
      nama: 'Vogue',
      gambarImg: 'assets/images/pare.jpg',
      deskripsi: 'Pare rasa khas yang bermanfaat untuk mengontrol gula darah.',
    ),
    BukuMajalah(
      nama: 'Deep Work',
      gambarImg: 'assets/images/daun_singkong.jpg',
      deskripsi: 'Daun singkong muda, bahan utama gulai daun singkong.',
    ),
    BukuMajalah(
      nama: 'Clean Code',
      gambarImg: 'assets/images/daun_pepaya.jpg',
      deskripsi: 'Daun pepaya segar untuk urap atau tumisan kaya gizi.',
    ),
    BukuMajalah(
      nama: 'Negeri5 Menara',
      gambarImg: 'assets/images/bawang_merah.jpg',
      deskripsi: 'Bumbu utama masakan Indonesia dengan aroma kuat.',
    ),
    BukuMajalah(
      nama: 'Harvard Business Review',
      gambarImg: 'assets/images/bawang_putih.jpg',
      deskripsi: 'Bawang putih Kating super gurih dan harum.',
    ),
    BukuMajalah(
      nama: 'Forbes Asia',
      gambarImg: 'assets/images/cabai_merah.jpg',
      deskripsi: 'Cabai segar pilihan untuk memberikan rasa pedas mantap.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: daftarBukuMajalah.length,
      itemBuilder: (context, index) {
        return ItemBukuMajalah(produk: daftarBukuMajalah[index]);
      },
    );
  }
}

class BukuMajalah {
  String nama;
  String gambarImg;
  String deskripsi;

  BukuMajalah({
    required this.nama,
    required this.gambarImg,
    required this.deskripsi,
  });
}

class ItemBukuMajalah extends StatelessWidget {
  final BukuMajalah produk;

  const ItemBukuMajalah({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                produk.gambarImg,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.broken_image, color: Colors.grey),
                  );
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    produk.nama,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),

                  const SizedBox(height: 6),
                  Text(
                    produk.deskripsi,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
