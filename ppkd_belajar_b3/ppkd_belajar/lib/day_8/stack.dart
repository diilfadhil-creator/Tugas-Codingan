import 'package:flutter/material.dart';

class StackDay8 extends StatelessWidget {
  const StackDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Belajar Stuck dll")),
      body: Stack(
        children: [
          Container(width: 200, height: 200, color: Colors.blue),
          Positioned(
            top: 10,
            left: 10,
            child: Text("Di atas kotak", style: TextStyle(color: Colors.white)),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Container(width: 60, height: 60, color: Colors.white),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Icon(Icons.favorite, color: Colors.red, size: 40),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Container(width: 50, height: 50, color: Colors.red),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Icon(Icons.favorite, color: Colors.red, size: 40),
          ),
          SingleChildScrollView(
            child: Column(
              children: [Text("Awal"), SizedBox(height: 100), Text("Akhir")],
            ),
          ),
          ListView(
            children: [
              ListTile(leading: Icon(Icons.person), title: Text("Item 1")),
              ListTile(leading: Icon(Icons.person), title: Text("Item 2")),
            ],
          ),
          GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2, // Menampilkan 2 kotak per baris
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(color: Colors.red),
              Container(color: Colors.yellow),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(
                height: 800,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/masjid.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: 800,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/zakat.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '',
              border: OutlineInputBorder(), // Menambahkan garis batas
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}
