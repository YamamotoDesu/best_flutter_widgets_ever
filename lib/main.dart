import 'package:best_flutter_widgets_ever/10_table/table.dart';
import 'package:best_flutter_widgets_ever/11_alert_dialog/alert_dialog.dart';
import 'package:best_flutter_widgets_ever/1_material_banner/material_banner.dart';
import 'package:best_flutter_widgets_ever/2_preferred_size/preferred_size.dart';
import 'package:best_flutter_widgets_ever/3_bottom_sheet/bottom_sheet.dart';
import 'package:best_flutter_widgets_ever/4_long_press_draggable/long_press_draggable.dart';
import 'package:best_flutter_widgets_ever/5_interactive_view/interactive_view.dart';
import 'package:best_flutter_widgets_ever/6_reorderable_list_view/reorerable_list_view.dart';
import 'package:best_flutter_widgets_ever/7_checkbox_list_title/checkbox_list_title.dart';
import 'package:best_flutter_widgets_ever/8_circle_avatar/circle_avatar.dart';
import 'package:best_flutter_widgets_ever/9_cupertino_context_menu/cupertino_context_menu.dart';
import 'package:flutter/material.dart';

import '12_animated_container/animated_container.dart';
import '13_card/card.dart';
import '14_datepicker/date_picker.dart';
import '15_timepicker/time_picker.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Best Flutter Widgets EVER!'),
        ),
        body: const MyTimePicker(),
      ),
      // home: MyReordableListView(),
    );
  }
}
