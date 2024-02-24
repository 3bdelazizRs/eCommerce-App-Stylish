import 'package:flutter/material.dart';

class costumText extends StatelessWidget {
  const costumText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 12,
    this.fontFamily = 'Montserrat',
    this.fontWeight = FontWeight.normal,
  });
  final String text;
  final Color color;
  final double size;
  final String fontFamily;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: fontFamily,
          fontWeight: fontWeight),
    );
  }
}
