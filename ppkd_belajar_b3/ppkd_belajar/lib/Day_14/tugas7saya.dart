import 'package:flutter/material.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/aturpengingat.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/kategoriproduk.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/syaratketentuan.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/tampilan.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/tanggal.dart';
import 'package:ppkd_belajar/day_11/extension/navigator.dart';

class ReferensTugas7NihDul extends StatefulWidget {
  const ReferensTugas7NihDul({super.key});

  @override
  State<ReferensTugas7NihDul> createState() => _ReferensTugas7NihDulState();
}

class _ReferensTugas7NihDulState extends State<ReferensTugas7NihDul> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    Syaratkententuan(),
    Tampilan(),
    Kategoriproduk(),
    Tanggal(),
    Aturpengingat(),
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
              icon: Icons.check_box,
              title: "Syarat Ketentuan",
              index: 0,
            ),
            listtilebuatdrawer(
              icon: Icons.sunny,
              title: "Theme Switcher",
              index: 1,
            ),
            listtilebuatdrawer(
              icon: Icons.shopping_bag,
              title: "Catalog Product",
              index: 2,
            ),
            listtilebuatdrawer(
              icon: Icons.calendar_month,
              title: "Calender",
              index: 3,
            ),
            listtilebuatdrawer(
              icon: Icons.notification_add,
              title: "Atur Peringatan",
              index: 4,
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
