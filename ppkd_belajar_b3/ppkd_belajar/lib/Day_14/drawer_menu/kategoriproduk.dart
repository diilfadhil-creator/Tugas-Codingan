import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Kategoriproduk extends StatefulWidget {
  const Kategoriproduk({super.key});

  @override
  State<Kategoriproduk> createState() => _KategoriProductState();
}

class _KategoriProductState extends State<Kategoriproduk> {
  String? _selected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: _selected,
          items: ["electronic", "pakaian", "makanan"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),

          onChanged: (value) {
            setState(() {
              _selected = value;
            });
          },
        ),
        Text(_selected.toString()),
        // Container(
        //   height: 50,
        //   width: 50,
        //   // color: _selected == "electronic"
        //   //     ? Colors.red
        //   //     : _selected == "pakaian"
        //   //     ? Colors.amber
        //   //     : Colors.blue,
        // ),
      ],
    );
  }
}
