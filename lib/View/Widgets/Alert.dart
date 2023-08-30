import 'package:flutter/material.dart';
import 'package:untitled/View/Screen/elementScreen.dart';
import 'package:untitled/View/Screen/HomeAppBar.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});
  static String id = "Alert";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Stack(children: [
        Container(
          child: TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('AlertDialog Title'),
                content: const Text('AlertDialog description'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: const Text('Show Dialog'),
          ),
        )
      ]),
    );
  }
}
