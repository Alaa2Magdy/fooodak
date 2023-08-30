import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var counter = 0;

class ItemCountButton extends StatefulWidget {
  ItemCountButton({required this.function, required this.icon});
  final VoidCallback function;
  final IconData icon;

  @override
  State<ItemCountButton> createState() => _ItemCountButtonState();
}

class _ItemCountButtonState extends State<ItemCountButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: widget.function,
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.transparent,
            ),
            child: Icon(
              this.widget.icon,
              color: Colors.transparent,
              size: 40,
            ),
          )),
    );
  }
}
