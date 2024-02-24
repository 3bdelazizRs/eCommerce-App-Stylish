import 'package:flutter/material.dart';

class CardOfMenu extends StatelessWidget {
  const CardOfMenu({
    super.key,
    required this.img,
    required this.text,
  });
  final String img;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Montserrat',
            ),
          )
        ],
      ),
    );
  }
}
