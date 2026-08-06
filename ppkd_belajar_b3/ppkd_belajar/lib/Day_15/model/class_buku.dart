import 'package:flutter/material.dart';

class Level3List extends StatelessWidget {
  Level3List({super.key});

  final List<BukuMajalah> daftarBukuMajalah = [
    BukuMajalah(
      nama: 'laskar Pelangi',
      gambarImg: 'assets/images/laskar.jpeg',
      deskripsi: 'Buku menceritakan tentang persahabatan.',
    ),
    BukuMajalah(
      nama: 'Filosofi Teras',
      gambarImg: 'assets/images/filosofi.jpg',
      deskripsi: 'Cerita tentang filosifi teras.',
    ),
    BukuMajalah(
      nama: 'Bumi Manusia',
      gambarImg: 'assets/images/bumi.jpg',
      deskripsi: 'Cerita tentang bumi manusia.',
    ),
    BukuMajalah(
      nama: 'Atomic Habbits',
      gambarImg: 'assets/images/atomic.jpg',
      deskripsi: 'Cerita tentang anatomic habits.',
    ),
    BukuMajalah(
      nama: 'Sapiens',
      gambarImg: 'assets/images/sapiens.jpg',
      deskripsi: 'Cerita tentang sapiens.',
    ),
    BukuMajalah(
      nama: 'Laut Bercerita',
      gambarImg: 'assets/images/laut.jpg',
      deskripsi: 'Cerita tentang laut bercerita.',
    ),
    BukuMajalah(
      nama: '1984',
      gambarImg: 'assets/images/1984.jpg',
      deskripsi: 'Cerita tentang 1984.',
    ),
    BukuMajalah(
      nama: 'Cantik Itu Luka',
      gambarImg: 'assets/images/cinta.jpg',
      deskripsi: 'Cerita tentang cantik itu luka.',
    ),
    BukuMajalah(
      nama: 'Tempo',
      gambarImg: 'assets/images/tempo.webp',
      deskripsi: 'Majalah berita.',
    ),
    BukuMajalah(
      nama: 'National Graphic',
      gambarImg: 'assets/images/national.jpg',
      deskripsi: 'Majalah tentang national.',
    ),
    BukuMajalah(
      nama: 'Bobo',
      gambarImg: 'assets/images/bobo.jpg',
      deskripsi: 'cerita tentang anak-anak.',
    ),
    BukuMajalah(
      nama: 'Forbes',
      gambarImg: 'assets/images/forbes.jpg',
      deskripsi: 'majalah tentang forbes.',
    ),
    BukuMajalah(
      nama: 'Trubus',
      gambarImg: 'assets/images/yrubus.jpg',
      deskripsi: 'trubus.',
    ),
    BukuMajalah(
      nama: 'Time',
      gambarImg: 'assets/images/time.jpg',
      deskripsi: 'time.',
    ),
    BukuMajalah(
      nama: 'Vogue',
      gambarImg: 'assets/images/vogue.webp',
      deskripsi: 'vogue.',
    ),
    BukuMajalah(
      nama: 'Deep Work',
      gambarImg: 'assets/images/deep.jpg',
      deskripsi: 'deep work.',
    ),
    BukuMajalah(
      nama: 'Clean Code',
      gambarImg: 'assets/images/code.webp',
      deskripsi: 'clean code',
    ),
    BukuMajalah(
      nama: 'Negeri5 Menara',
      gambarImg: 'assets/images/menara.jpg',
      deskripsi: 'Menara negeri 5.',
    ),
    BukuMajalah(
      nama: 'Harvard Business Review',
      gambarImg: 'assets/images/havard.webp',
      deskripsi: 'havard.',
    ),
    BukuMajalah(
      nama: 'Forbes Asia',
      gambarImg: 'assets/images/forbes.jpg',
      deskripsi: 'Forbes asia.',
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
