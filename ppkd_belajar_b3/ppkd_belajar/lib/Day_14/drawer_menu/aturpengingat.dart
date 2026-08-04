import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Aturpengingat extends StatefulWidget {
  const Aturpengingat({super.key});

  @override
  State<Aturpengingat> createState() => _AturpengingatState();
}

class _AturpengingatState extends State<Aturpengingat> {
  TimeOfDay? _selectedTimeOfDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final TimeOfDay? picked = await showTimePicker(
              context: context,
              // firstDate: DateTime(2021),
              // lastDate: DateTime.now(),
              initialTime: TimeOfDay.now(),
            );
            if (picked != null) {
              setState(() {
                _selectedTimeOfDay = picked;
              });
            }
          },
          child: Text("Pilih Jam"),
        ),
        Text(
          _selectedTimeOfDay == null
              ? "Anda belum pilih jam"
              : DateFormat('HH:mm').format(
                  DateTime(
                    0,
                    0,
                    0,
                    _selectedTimeOfDay!.hour,
                    _selectedTimeOfDay!.minute,
                  ),
                ),
        ),
      ],
    );
  }
}
