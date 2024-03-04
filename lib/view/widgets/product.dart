import 'package:e_commerce/view/home/productDetails.dart';
import 'package:e_commerce/view/widgets/cardofproduct.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
    required this.myProduct,
  });

  final myProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            costumText(
              text: "${myProduct.length}+ Iteams ",
              size: 18.sp,
              fontWeight: FontWeight.w600,
            ),
            Row(
              children: [
                Container(
                  width: 61,
                  height: 24,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            offset: const Offset(1, 1),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sort",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_down_outlined,
                        size: 20,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  width: 61,
                  height: 24,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            offset: const Offset(1, 1),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.filter_alt_outlined,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        Expanded(
            child: MasonryGridView.count(
          itemCount: myProduct.length,
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductsDetails(
                      produt: myProduct[index],
                    ),
                  ),
                );
              },
              child: CardOfProduct(
                  isOnline: true,
                  img: myProduct[index].image,
                  title: myProduct[index].title,
                  description: myProduct[index].description),
            );
          },
        )),
      ],
    );
  }
}
