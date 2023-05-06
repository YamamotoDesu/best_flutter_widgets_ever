import 'package:flutter/material.dart';

class MyInteractiveView extends StatefulWidget {
  const MyInteractiveView({super.key});

  @override
  State<MyInteractiveView> createState() => _MyInteractiveViewState();
}

class _MyInteractiveViewState extends State<MyInteractiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(
          double.infinity,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Best Flutter Widgets EVER!'),
          ),
        ),
      ),
    );
  }
}
