import 'package:flutter/material.dart';
import 'package:ppkd_belajar/Day_14/drawer_menu/syaratketentuan.dart';
import 'package:ppkd_belajar/day_11/extension/navigator.dart';
import 'package:ppkd_belajar/day_13/input_widget/checkbox.dart';
import 'package:intl/intl.dart';

class Syaratkententuan extends StatefulWidget {
  const Syaratkententuan({super.key});

  @override
  State<Syaratkententuan> createState() => _SyaratkententuanState();
}

class _SyaratkententuanState extends State<Syaratkententuan> {
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Saya menyetujui persyaratan"),
        Checkbox(
          value: _isCheck,
          onChanged: (value) {
            _isCheck = value ?? false;
            setState(() {});
          },
        ),

        Text(
          _isCheck ? "Pendaftaran diperbolehkan" : " Pedaftaran belum tersedia",
        ),
      ],
    );
  }
}
