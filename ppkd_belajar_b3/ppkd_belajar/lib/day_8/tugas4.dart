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
          "AI Trip Planner",
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
                  "Buat rencana perjalananmu",
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
                    image: AssetImage('assets/image/jakarta.jpeg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke Jakarta"),
                  subtitle: Text("25 - 26 Juli 2026"),
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
                    image: AssetImage('assets/image/bandung.jpeg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke Bandung"),
                  subtitle: Text("15 - 20 Juni 2026"),
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
                    image: AssetImage('assets/image/padang.jpeg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke Padang"),
                  subtitle: Text("2 - 9 Juni 2026"),
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
                    image: AssetImage('assets/image/tokyo.jpeg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke tokyo"),
                  subtitle: Text("25 december 2025 - 5 Januari 2026"),
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
                    image: AssetImage('assets/image/kyoto.jpeg'),
                    height: 60,
                    width: 100,
                  ),
                  title: Text("Trip ke kyoto"),
                  subtitle: Text("6 - 10 Januari 2026"),
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
                    image: AssetImage('assets/image/osaka.jpeg'),
                    height: 60,
                    width: 100,
                    // fit: BoxFit.scaleDown,
                    // alignment: AlignmentGeometry.centerRight,
                  ),
                  title: Text("Trip ke osaka"),
                  subtitle: Text("10 - 15 Februari 2026"),
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
