import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardOfProduct extends StatelessWidget {
  const CardOfProduct({
    super.key,
    this.isOnline = false,
    required this.img,
    required this.title,
    required this.description,
  });
  final bool isOnline;
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
          SizedBox(
            width: 170.w,
            height: 124.h,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: isOnline
                    ? Image.network(img)
                    : Image.asset(
                        img,
                        fit: BoxFit.fill,
                      )),
          ),
          Container(
            width: 170.w,
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  width: 170.w,
                  child: Text(
                    description,
                    softWrap: true,
                    maxLines: 2,
                    style: const TextStyle(
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
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
                Row(
                  children: [
                    Icon(Icons.star, color: starColor, size: 16),
                    Icon(Icons.star, color: starColor, size: 16),
                    Icon(Icons.star, color: starColor, size: 16),
                    Icon(Icons.star, color: starColor, size: 16),
                    const Icon(Icons.star, color: Colors.grey, size: 16),
                    const SizedBox(
                      width: 4,
                    ),
                    const costumText(
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
