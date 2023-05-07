import 'package:flutter/material.dart';

class MyReordableListView extends StatefulWidget {
  const MyReordableListView({super.key});

  @override
  State<MyReordableListView> createState() => _MyReordableListViewState();
}

class _MyReordableListViewState extends State<MyReordableListView> {
  final List<int> items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: List.generate(
        items.length,
        (index) => ListTile(
          key: Key('$index'),
          tileColor: items[index] % 2 == 0 ? Colors.white : Colors.grey,
          title: Text('Item ${items[index]}'),
          trailing: const Icon(
            Icons.drag_handle_sharp,
          ),
        ),
      ),
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          final int item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      },
    );
  }
}
