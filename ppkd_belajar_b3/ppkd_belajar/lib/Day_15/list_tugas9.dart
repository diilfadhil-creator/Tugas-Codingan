import 'package:flutter/material.dart';

class ListTugas9 extends StatelessWidget {
  ListTugas9({super.key});

  List<String> bukuDanMajalah = [
    "Buku: Bumi Manusia",
    "Buku: Laskar Pelangi",
    "Buku: Filosofi Teras",
    "Buku: Atomic Habits",
    "Buku: Sapiens",
    "Buku: Laut Bercerita",
    "Buku: 1984",
    "Buku: Cantik Itu Luka",
    "Majalah: Tempo",
    "Majalah: National Geographic",
    "Majalah: Bobo",
    "Majalah: Forbes",
    "Majalah: Trubus",
    "Majalah: Time",
    "Majalah: Vogue",
    "Majalah: Deep Work",
    "Majalah: Clean Code",
    "Majalah: Negeri 5 Menara",
    "Majalah: Harvard Business Review",
    "Majalah: Forbes Asia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: bukuDanMajalah.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(bukuDanMajalah[index], style: TextStyle(height: 5));
        },
      ), // ListView.builder
    ); // Scaffold
  }
}
