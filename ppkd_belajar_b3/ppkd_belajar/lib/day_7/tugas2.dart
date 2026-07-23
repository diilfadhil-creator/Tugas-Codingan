import 'package:flutter/material.dart';

class Tugas2Day7 extends StatelessWidget {
  const Tugas2Day7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informasi Aplikasi"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(20),
            child: Text(
              "Baziz Yayasan Daruttaubah",
              style: TextStyle(fontSize: 28),
            ),
          ),

          Container(
            height: 50,
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 20),
                Text("yayasandarrutaubah@gmail.com"),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              children: [
                Icon(Icons.phone),
                Text("085781813979"),
                Spacer(),
                Padding(padding: EdgeInsetsGeometry.only(right: 100)),
                Icon(Icons.location_on),
                Text("Pancoran, Jaksel"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                  ),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("500k+"), Text("Bayar Disini")],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("5.0"),
                        Text("Rating"),
                        Icon(color: Colors.red, Icons.star),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Text(
              "Aplikasi ini adalah untuk memudahkan kita membayar Zakat fitrah, Zakat mal, dan Zakat penghasilan",
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 20),

          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
              color: Colors.greenAccent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/zakat.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
