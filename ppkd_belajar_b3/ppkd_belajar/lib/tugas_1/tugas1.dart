import 'package:flutter/material.dart';

class Tugas1 extends StatelessWidget {
  const Tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text('Profil saya'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 15,
        children: [
          Text(
            "Fadhil Muhammmad",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.location_on), Text(("Inggris"))],
          ),
          Text(
            "peserta pelatihan yang sedang mengikuti pelajaran flutter",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.indigoAccent,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),
        ],
      ),
    );
  }
}
