import 'package:flutter/material.dart';
import 'package:ppkd_belajar/apk_baziz/login.dart';
import 'package:ppkd_belajar/day_11/tugas11.dart';
import 'package:ppkd_belajar/day_9/day9.dart';
import 'package:ppkd_belajar/day_9/tugas9.dart';

class BottomnavDay13 extends StatefulWidget {
  const BottomnavDay13({super.key});

  @override
  State<BottomnavDay13> createState() => _BottomnavDay13State();
}

class _BottomnavDay13State extends State<BottomnavDay13> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [Login(), Tugas11(), Tugas9()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "school"),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "business",
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
