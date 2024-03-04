
import 'package:e_commerce/view/widgets/Shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardLoding extends StatelessWidget {
  const CardLoding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShimmerLoading(
            isLoading: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 170.w,
                    height: 124.h,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: ClipOval(),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    width: 140.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Container(
                        width: 100.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        width: 25.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    width: 50.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  SizedBox(
                    height: 8.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
