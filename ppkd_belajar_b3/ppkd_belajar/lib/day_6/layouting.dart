import 'package:flutter/material.dart';

class LayoutingDay6 extends StatelessWidget {
  const LayoutingDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text('Hello batch 7'),
        centerTitle: true,
        actions: [Text("2"), Text("1")],
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.max,
        // spacing: 15,
        children: [
          Text("Hello batch 7"),
          SizedBox(height: 20),
          Text("Hello batch 7"),
          SizedBox(height: 20),
          Text("Hello batch 7"),
          SizedBox(width: 20),
          Text("Hello batch 7"),
          Row(
            children: [
              Row(children: [Icon(Icons.star), Text(("Hello batch 7"))]),
              SizedBox(height: 50),
              Row(children: [Icon(Icons.star), Text(("Hello batch 7"))]),

              Padding(padding: const EdgeInsetsGeometry.all(16.0)),
              Row(children: [Icon(Icons.star), Text(("Hello batch 7"))]),
              Row(children: [Icon(Icons.star), Text(("Hello batch 7"))]),
              Row(children: [Icon(Icons.star), Text(("Hello batch 7"))]),
              Row(children: [Icon(Icons.star), Text(("Hello batch 7"))]),
            ],
          ),
        ],
      ),
    );
  }
}
