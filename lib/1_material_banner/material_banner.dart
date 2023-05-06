import 'package:flutter/material.dart';

class MyMaterialBanner extends StatelessWidget {
  const MyMaterialBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text(
          'Open',
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
            padding: const EdgeInsets.all(20),
            content: const Text(
              'Subscribe',
            ),
            leading: const Icon(
              Icons.notification_important_outlined,
            ),
            elevation: 5,
            backgroundColor: Colors.white12,
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
                child: const Text(
                  'Dismiss',
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}
