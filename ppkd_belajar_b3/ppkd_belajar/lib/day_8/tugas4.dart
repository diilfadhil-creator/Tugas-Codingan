import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: Text(
          "All Trip Planner",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      backgroundColor: Colors.grey[100],

      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Rencana Perjalanan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_on),
                      hintText: "Tujuan Destinasi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_month),
                      hintText: "Tanggal Berangkat",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.access_time),
                      hintText: "Durasi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Jumlah Travel",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                "History Travel",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/images/monas.jpg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke Jakarta"),
                  subtitle: Text("25 - 26 September 2026"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/images/bandung.png'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke Bandung"),
                  subtitle: Text("15 - 20 November 2026"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/images/bali.jpg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke Bali"),
                  subtitle: Text("2 - 9 Januari 2027"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/images/semarang.jpg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke Semarang"),
                  subtitle: Text("25 - 27 Desember 2026"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/images/jogja.jpg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke Yogyakarta"),
                  subtitle: Text("28 Desember 2025 - 4 Januari 2026"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                height: 75,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/images/surabaya.jpg'),
                    height: 60,
                    width: 100,
                    // fit: BoxFit.scaleDown,
                    // alignment: AlignmentGeometry.centerRight,
                  ),
                  title: Text("Trip ke Surabaya"),
                  subtitle: Text("10 - 15 Maret 2026"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
