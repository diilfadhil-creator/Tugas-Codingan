import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homeday11 extends StatelessWidget {
  const Homeday11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Balik/Pop'),
            ),
          ),
        ],
      ),
    );
  }
}
