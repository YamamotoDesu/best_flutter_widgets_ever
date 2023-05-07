import 'package:flutter/material.dart';

class MyCheckListTitle extends StatefulWidget {
  const MyCheckListTitle({super.key});

  @override
  State<MyCheckListTitle> createState() => _MyCheckListTitleState();
}

class _MyCheckListTitleState extends State<MyCheckListTitle> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        title: const Text('Check me out!'),
        value: _isChecked,
        onChanged: (bool? newValue) {
          setState(
            () {
              _isChecked = newValue;
            },
          );
        },
        activeColor: Colors.orangeAccent,
        checkColor: Colors.red,
        tileColor: Colors.black12,
        subtitle: const Text('This is a subtitle'),
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
      ),
    );
  }
}
