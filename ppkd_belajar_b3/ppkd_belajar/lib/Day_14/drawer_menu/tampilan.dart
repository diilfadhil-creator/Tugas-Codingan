import 'package:flutter/material.dart';

class Tampilan extends StatefulWidget {
  const Tampilan({super.key});

  @override
  State<Tampilan> createState() => _TampilanState();
}

class _TampilanState extends State<Tampilan> {
  bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _isDark ? Colors.black : Colors.white,
      child: Column(
        children: [
          Switch(
            activeThumbColor: Colors.blueAccent,
            inactiveThumbColor: Colors.red,
            value: _isDark,
            onChanged: (value) {
              _isDark = value ?? false;
              setState(() {});
            },
          ),
          Text(_isDark ? "sudah di ceklis" : "belum diceklis"),
        ],
      ),
    );
  }
}
