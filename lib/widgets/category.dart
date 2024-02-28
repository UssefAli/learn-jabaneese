import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {required this.onTap,
      required this.color,
      required this.text,
      super.key});
  final Color color;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 15),
        width: double.infinity,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
