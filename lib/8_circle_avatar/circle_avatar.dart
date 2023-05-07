import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        radius: 55,
        child: Text('Hi'),
      ),
    );
  }
}