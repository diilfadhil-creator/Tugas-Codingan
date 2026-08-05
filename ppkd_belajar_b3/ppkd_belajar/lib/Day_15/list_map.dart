import 'package:flutter/material.dart';

class ListMapTugas9 extends StatelessWidget {
  ListMapTugas9({super.key});

  List<Map<String, dynamic>> dataProduk = [
    {"nama": "Laskar Pelangi", "Icon": Icons.book},
    {"nama": "filsofi Teras", "Icon": Icons.book},
    {"nama": "Bumi Manusia", "Icon": Icons.book},
    {"nama": "Atomic Habits", "Icon": Icons.book},
    {"nama": "Sapiens", "Icon": Icons.book},
    {"nama": "Laut Bercerita", "Icon": Icons.book},
    {"nama": "1984", "Icon": Icons.book},
    {"nama": "Cantik Itu Luka", "Icon": Icons.book},
    {"nama": "Tempo", "Icon": Icons.book},
    {"nama": "National Geographic", "Icon": Icons.book},
    {"nama": "Bobo", "Icon": Icons.book},
    {"nama": "Forbes", "Icon": Icons.book},
    {"nama": "Trubus", "Icon": Icons.book},
    {"nama": "Time", "Icon": Icons.book},
    {"nama": "Vogue", "Icon": Icons.book},
    {"nama": "Deep Work", "Icon": Icons.book},
    {"nama": "Clean Code", "Icon": Icons.book},
    {"nama": "Negeri 5 Menara", "Icon": Icons.book},
    {"nama": "Harvard Business Review", "Icon": Icons.book},
    {"nama": "Forbes Asia", "Icon": Icons.book},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataProduk.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(dataProduk[index]['nama']),
            trailing: Icon(dataProduk[index]['Icon']),
          );
        },
      ),
    );
  }
}
