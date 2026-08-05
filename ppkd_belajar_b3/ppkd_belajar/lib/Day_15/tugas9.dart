import 'package:flutter/material.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/aturpengingat.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/kategoriproduk.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/syaratketentuan.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/tampilan.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/tanggal.dart';
import 'package:ppkd_belajar/Day_15/list.dart';
import 'package:ppkd_belajar/Day_15/list_map.dart';
import 'package:ppkd_belajar/Day_15/list_of_map.dart';
import 'package:ppkd_belajar/Day_15/list_tugas9.dart';
import 'package:ppkd_belajar/Day_15/model/class_buku.dart';
import 'package:ppkd_belajar/Day_15/model/class_buku.dart';
import 'package:ppkd_belajar/Day_15/model/list_model.dart';
import 'package:ppkd_belajar/day_11/extension/navigator.dart';

class Tugas9Day15 extends StatefulWidget {
  const Tugas9Day15({super.key});

  @override
  State<Tugas9Day15> createState() => _ReferensTugas7NihDulState();
}

class _ReferensTugas7NihDulState extends State<Tugas9Day15> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    ListTugas9(),
    ListMapTugas9(),
    Level3List(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas 7")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.yellow),
              child: Align(
                alignment: AlignmentGeometry.topLeft,
                child: Text(
                  'Navigation Menu',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            listtilebuatdrawer(
              icon: Icons.book,
              title: "Buku dan majalah",
              index: 0,
            ),
            listtilebuatdrawer(
              icon: Icons.widgets,
              title: "Pilihan Buku Dan Majalah",
              index: 1,
            ),
            listtilebuatdrawer(
              icon: Icons.shopping_bag,
              title: "Catalog Product",
              index: 2,
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }

  Column listtilebuatdrawer({
    required IconData icon,
    required String title,
    required int index,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          onTap: () {
            changeBottom(index);
          },
        ),
      ],
    );
  }
}
