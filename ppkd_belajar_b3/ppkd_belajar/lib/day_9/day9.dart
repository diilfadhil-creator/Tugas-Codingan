import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day9 extends StatefulWidget {
  const Day9({super.key});

  @override
  State<Day9> createState() => _ContohStatefullState();
}

class _ContohStatefullState extends State<Day9> {
  int counter = 0;

  bool showImage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(alignment: AlignmentGeometry.center),
          SizedBox(height: 200),
          ElevatedButton(
            onPressed: () {
              debugPrint("Notfikasi debug console");
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text("Kotak disentuh")));
              debugPrint('Tombol ditekan');
            },
            child: Text("klik saya"),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                showImage = !showImage;
              });
            },
            child: Text(showImage ? "Sembunyikan Gambar" : "Lihat Gambar"),
          ),
          if (showImage)
            Image.asset("assets/images/jogja.jpg", width: 120, height: 120),

          Text("Nilai: $counter"),
          ElevatedButton(
            onPressed: () {
              // Langkah 6: Tambahkan setState di dalam fungsi aksi
              setState(() {
                counter++; // Memperbarui nilai state
              });
            },
            child: Text("Tambah"),
          ),
          IconButton(
            icon: Icon(Icons.start),
            onPressed: () {
              debugPrint('Icon Di klik');
            },
          ),
          TextButton(
            onPressed: () {
              debugPrint('Tombol teks ditekan');
            },
            child: Text('Batal'),
          ),
          InkWell(
            onTap: () {
              debugPrint('Gambar diprint');
            },
            child: Text('Contoh'),
          ),
          GestureDetector(
            onTap: () {
              debugPrint('Disentuh Sekali');
            },
            onDoubleTap: () {
              debugPrint('Disentuh Dua kali');
            },
            onLongPress: () {
              debugPrint('Tahan Lama');
            },
            child: Container(
              color: CupertinoColors.black,
              padding: EdgeInsets.all(16),
              child: Text('Tekan Saya', style: TextStyle(color: Colors.white)),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              debugPrint('FAB ditekan');
            },
            tooltip: 'Tambah Data',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
