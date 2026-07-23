import 'package:flutter/material.dart';

class ExpandedDay6 extends StatelessWidget {
  const ExpandedDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expaded day 6'),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: [
          Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(flex: 2, child: Container(color: Colors.yellow)),
          Expanded(flex: 2, child: Container(color: Colors.green)),
        ],
      ),
    );
  }
}
