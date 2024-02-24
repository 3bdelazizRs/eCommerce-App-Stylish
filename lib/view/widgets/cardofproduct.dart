import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';

class CardOfProduct extends StatelessWidget {
  const CardOfProduct({
    super.key,
    required this.img,
    required this.title,
    required this.description,
  });
  final String img;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                img,
                fit: BoxFit.fill,
              )),
          Container(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  description,
                  style: const TextStyle(
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "\$ 150",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Row(
                  children: [
                    Text(
                      "\$ 240",
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "40%Off",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    Icon(Icons.star, color: Colors.grey, size: 16),
                    SizedBox(
                      width: 4,
                    ),
                    costumText(
                      text: "56890",
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
