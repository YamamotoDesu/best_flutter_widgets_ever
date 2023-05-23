import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  @override
  Widget build(BuildContext context) {
    TimeOfDay _selectedTime = TimeOfDay.now();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("${_selectedTime.hour} : ${_selectedTime.minute}"), 
          ElevatedButton(
            child: const Text("Choose Time"),
            onPressed: () async {
              final TimeOfDay? pickedTime = await showTimePicker(
                context: context,
                initialTime: _selectedTime,
                initialEntryMode: TimePickerEntryMode.dial
              );
              if (pickedTime != null && pickedTime != _selectedTime) {
                setState(() {
                  _selectedTime = pickedTime;
                });
              }
            }
          ),
        ],
      ),
    );
  }
}
