import 'package:flutter/material.dart';

class CardAnnonce extends StatelessWidget {
  const CardAnnonce({
    super.key,
    required this.text,
    required this.descpition,
    required this.icon,
    required this.color,
  });
  final String text;
  final String descpition;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 343,
      height: 60,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    descpition,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
          Container(
            width: 100,
            height: 32,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(6)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                  size: 16,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
