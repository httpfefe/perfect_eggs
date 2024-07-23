import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      this.selected = false,
      required this.label,
      required this.callback});

  final String label;
  final bool selected;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 110,
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF4A460) : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 1,
          color: selected ? const Color(0xFFF4A460) : Colors.grey,
        ),
      ),
      child: TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
