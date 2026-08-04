import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tanggal extends StatefulWidget {
  const Tanggal({super.key});

  @override
  State<Tanggal> createState() => _TanggalState();
}

class _TanggalState extends State<Tanggal> {
  DateTime? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2021),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
            );

            if (picked != null) {
              setState(() {
                _selectedTime = picked;
              });
            }
          },
          child: const Text("Pilih Tanggal"),
        ),

        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEEE, dd MMMM yyyy',
                  'id_ID',
                ).format(_selectedTime!),
        ),
      ],
    );
  }
}
