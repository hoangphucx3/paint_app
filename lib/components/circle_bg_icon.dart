import 'package:flutter/material.dart';

class CircleBGIcon extends StatelessWidget {
  const CircleBGIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 29,
      height: 29,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white12),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}