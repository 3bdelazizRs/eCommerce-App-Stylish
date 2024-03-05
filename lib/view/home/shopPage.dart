import 'package:e_commerce/Controller/ProductController.dart';
import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

ProductController productController = Get.find();

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: costumText(
          text: "Shopping List",
          size: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: productController.myProduct.length,
                itemBuilder: (context, index) => Container(
                      padding:
                          EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
                      margin:
                          EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
                      width: 331.w,
                      height: 191.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Column(children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 130.w,
                              height: 125,
                              child: Image.network(
                                  productController.myProduct[index].image),
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            SizedBox(
                              height: 130.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  costumText(
                                    text: productController
                                        .myProduct[index].title,
                                    size: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      costumText(
                                        text:
                                            "${productController.myProduct[index].rating.rating}",
                                        size: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      RatingBarIndicator(
                                        rating: double.parse(
                                            "${productController.myProduct[index].rating.rating}"),
                                        itemBuilder: (context, index) =>
                                            const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        itemCount: 5,
                                        itemSize: 18.sp,
                                        direction: Axis.horizontal,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    width: 84.w,
                                    height: 29.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: borderColor),
                                        borderRadius:
                                            BorderRadius.circular(4.r)),
                                    child: Center(
                                      child: costumText(
                                        text:
                                            "\$ ${productController.myProduct[index].price}",
                                        size: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            costumText(
                              text: "Total Order (1)   :",
                              size: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            costumText(
                              text:
                                  "\$ ${productController.myProduct[index].price}",
                              size: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        )
                      ]),
                    )),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.r, right: 10.r),
            height: 100.h,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey, //New
                    blurRadius: 5.0,
                  )
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    topRight: Radius.circular(24.r))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  costumText(
                    text: "\$ ${productController.calculPrice()}",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Container(
                    width: 219.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: primaryColor),
                    child: Center(
                      child: costumText(
                        text: "Proceed to Payment",
                        color: Colors.white,
                        size: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
