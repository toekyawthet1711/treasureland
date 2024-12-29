import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const Circle({
    required this.width,
    required this.height,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}