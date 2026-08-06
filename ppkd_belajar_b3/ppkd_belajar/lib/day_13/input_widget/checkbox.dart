import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CheckboxDay13 extends StatefulWidget {
  const CheckboxDay13({super.key});

  @override
  State<CheckboxDay13> createState() => _CheckboxDay13State();
}

class _CheckboxDay13State extends State<CheckboxDay13> {
  bool _ischeck = false;
  bool _isOn = false;
  String? _selected;
  DateTime? _selectedTime;
  TimeOfDay? _selectedTimeOfDay;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkboxWidget(),
        switchWidget(),
        dropdownWidget(),

        datepickerWidget(context),

        timepickerWidget(context),
      ],
    );
  }

  Column timepickerWidget(BuildContext context) {
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
        Text(
          _selectedTimeOfDay == null
              ? "Anda belum pilih jam"
              : DateFormat('HH:mm a').format(
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

  Column datepickerWidget(BuildContext context) {
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
          child: Text("Pilih Tanggal"),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEEE, dd MMM yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EE, dd MMM yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EE, dd/MMM/yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),
      ],
    );
  }

  Column dropdownWidget() {
    return Column(
      children: [
        DropdownButton(
          dropdownColor: Colors.deepOrangeAccent,
          value: _selected,
          items: ["Merah", "Kuning", "Hijau"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selected = value;
            });
          },
        ),
        Text(_selected.toString()),
        Container(
          height: 50,
          width: 50,
          color: _selected == "Merah"
              ? Colors.red
              : _selected == "Kuning"
              ? Colors.yellow
              : Colors.green,
        ),
      ],
    );
  }

  Column switchWidget() {
    return Column(
      children: [
        Switch(
          activeThumbColor: Colors.blueAccent,
          inactiveThumbColor: Colors.redAccent,
          value: _isOn,
          onChanged: (value) {
            _isOn = value ?? false;
            setState(() {});
          },
        ),
        Text(_isOn ? 'Matiin' : 'Hidupin'),
      ],
    );
  }

  Column checkboxWidget() {
    return Column(
      children: [
        Checkbox(
          value: _ischeck,
          onChanged: (value) {
            _ischeck = value ?? false;
            setState(() {});
          },
        ),
        Text(_ischeck ? "Sudah di ceklis" : "Belum di ceklis"),
      ],
    );
  }
}
