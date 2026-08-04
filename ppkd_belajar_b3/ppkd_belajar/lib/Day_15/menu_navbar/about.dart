import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.info, size: 80, color: Colors.green),
            SizedBox(height: 24),
            Text(
              'Aplikasi Baziz Yayasan daruttaubah',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              'Aplikasi ini mempermudah untuk para Muzakki untuk membayar zakat',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 40),
            Divider(),
            SizedBox(height: 16),
            Text(
              'Dibuat oleh : Fadhil Muhammad',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Versi Aplikasi: 2.1.0',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
