import 'package:flutter/material.dart';

class MyPreferredSize extends StatelessWidget {
  const MyPreferredSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          60.0,
        ),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.orangeAccent,
              ],
            ),
          ),
          child: SafeArea(
            child: ListTile(
              title: const Text('Best Flutter Widgets EVER!'),
              trailing: IconButton(
                icon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  color: Colors.white,
                  onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
