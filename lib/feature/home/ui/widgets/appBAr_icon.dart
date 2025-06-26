import 'package:flutter/material.dart';

class Appbar_icon extends StatelessWidget {
  const Appbar_icon({super.key, required this.onTap, required this.iconData});

  final VoidCallback onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: Icon(iconData, color: Colors.grey, size: 22),
        ),
      ),
    );
  }
}
