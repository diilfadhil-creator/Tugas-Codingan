import 'package:flutter/material.dart';

class ContainerDay6 extends StatelessWidget {
  const ContainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"), backgroundColor: Colors.red),
      backgroundColor: Colors.limeAccent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(height: 100, width: 400, color: Colors.blueAccent),
          ),

          Container(
            height: 100,
            width: 400,
            color: Colors.deepOrangeAccent,
            child: Column(
              children: [
                Text("Nama : Fadhil"),
                Text("Hobi : Membaca Buku Resep"),
                Text("Alamat : Jalan nya lupa"),
              ],
            ),
          ),
          Container(
            // alignment: Alignment.center,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(-5, -10),
                ),
              ],

              //   backgroundBlendMode: BlendMode.color,
              color: const Color.fromARGB(255, 205, 205, 135),
            ),
            height: 100,
            width: 400,
            child: Column(
              children: [
                Text("Nama : Fadhil"),
                Text("Hobby : Baca BUku Resep"),
                Text("Alamat : Jalan nya lupa"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
