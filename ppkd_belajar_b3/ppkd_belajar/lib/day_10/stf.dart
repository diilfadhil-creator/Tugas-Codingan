import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stf extends StatefulWidget {
  const Stf({super.key});

  @override
  State<Stf> createState() => _StfDay10State();
}

class _StfDay10State extends State<Stf> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Day 10'),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString(), style: TextStyle(fontSize: 100)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  counter--;
                },
                child: Text('tambah'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('back to zero')),
              ElevatedButton(onPressed: () {}, child: Text('kurang')),
            ],
          ),
        ],
      ),
    );
  }
}
