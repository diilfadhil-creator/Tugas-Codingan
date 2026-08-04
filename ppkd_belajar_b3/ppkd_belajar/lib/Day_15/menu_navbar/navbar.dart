import 'package:flutter/material.dart';
import 'package:ppkd_belajar/Day_14/tugas7saya.dart';
import 'package:ppkd_belajar/Day_15/menu_navbar/about.dart';
import 'package:ppkd_belajar/day_11/routing.dart';
import 'package:ppkd_belajar/apk_baziz/login.dart';

class ButtomNavDay13 extends StatefulWidget {
  const ButtomNavDay13({super.key});

  @override
  State<ButtomNavDay13> createState() => _ButtomNavDay13State();
}

class _ButtomNavDay13State extends State<ButtomNavDay13> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    debugPrint("Ini adalah value dari $_selectedBottom");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [ReferensTugas7NihDul(), About()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
          // BottomNavigationBarItem(
          //icon: Icon(Icons.business),
          //label: "business",
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
