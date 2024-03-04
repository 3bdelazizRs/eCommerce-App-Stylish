import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      width: 343.w,
      height: 60.h,
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
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    size: 15.sp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    descpition,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
          Container(
            width: 100.w,
            height: 32.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(6)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                  size: 16.sp,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
