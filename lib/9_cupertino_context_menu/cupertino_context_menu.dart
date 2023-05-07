import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoContextMenu extends StatelessWidget {
  const MyCupertinoContextMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CupertinoContextMenu(
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
          actions: <Widget>[
            CupertinoContextMenuAction(
              child: const Text('Action one'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: const Text('Action two'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
