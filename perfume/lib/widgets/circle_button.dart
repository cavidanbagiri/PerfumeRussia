

import 'package:flutter/material.dart';

class CircleButtonMenu extends StatelessWidget {
  CircleButtonMenu({Key? key, required this.icon, required this.iconSize, required this.onPressed}) : super(key: key);

  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 6, bottom: 6, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle
        ),
        child: Center(
          child: IconButton(
            icon: Icon(icon),
            iconSize: iconSize,
            onPressed: onPressed,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

