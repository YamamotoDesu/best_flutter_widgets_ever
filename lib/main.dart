import 'package:best_flutter_widgets_ever/1_material_banner/material_banner.dart';
import 'package:best_flutter_widgets_ever/2_preferred_size/preferred_size.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Best Flutter Widgets EVER!'),
      //   ),
      //   body: const MyPreferredSize(),
      // ),
      home: MyPreferredSize(),
    );
  }
}
