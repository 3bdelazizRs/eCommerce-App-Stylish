import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';

class cardOfDetailsProduct extends StatelessWidget {
  const cardOfDetailsProduct({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 1.5),
              borderRadius: BorderRadius.circular(4)),
          child: Row(
            children: [
              Icon(
                icon,
                size: 16,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 4,
              ),
              costumText(
                text: title,
                color: Colors.grey,
              ),
            ],
          )),
    );
  }
}
