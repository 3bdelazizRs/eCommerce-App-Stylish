import 'package:e_commerce/Controller/ProductController.dart';
import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/cardofproductDetails.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductsDetails extends StatefulWidget {
  ProductsDetails({super.key, required this.produt});
  final produt;

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  final controller = PageController();

  final List<String> _sizeList = ["6 UK", "7 UK", "8 UK", "9 UK", "10 UK"];

  int _indexSelect = 1;

  ProductController prodController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: menuCircleColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: [
                  const Icon(Icons.shopping_cart),
                  SizedBox(
                    width: 5.w,
                  ),
                  GetBuilder<ProductController>(
                      builder: (_) => costumText(
                            text: "${prodController.myProduct.length}",
                            size: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ))
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 235.h,
                        child: PageView.builder(
                            physics: const BouncingScrollPhysics(),
                            controller: controller,
                            itemCount: 3,
                            itemBuilder: (context, item) {
                              return Container(
                                padding: EdgeInsets.only(left: 5.r, right: 5.r),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    widget.produt.image,
                                  ),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: SwapEffect(
                              dotHeight: 10,
                              dotWidth: 10,
                              activeDotColor: primaryColor),
                        ),
                      ),
                      Row(
                        children: [
                          const costumText(
                            text: "Size: ",
                            fontWeight: FontWeight.w700,
                            size: 14,
                          ),
                          costumText(
                            text: _sizeList[_indexSelect],
                            fontWeight: FontWeight.w700,
                            size: 14,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 35,
                        child: ListView.builder(
                            itemCount: _sizeList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: GestureDetector(
                                  onTap: () => setState(() {
                                    _indexSelect = index;
                                  }),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: _indexSelect == index
                                            ? dotsColor
                                            : Colors.white,
                                        border: Border.all(
                                            color: dotsColor, width: 1.5),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: costumText(
                                        text: _sizeList[index],
                                        color: _indexSelect == index
                                            ? Colors.white
                                            : dotsColor,
                                        fontWeight: FontWeight.w600,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      costumText(
                        text: widget.produt.title,
                        fontWeight: FontWeight.w700,
                        size: 20,
                      ),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating:
                                double.parse("${widget.produt.rating.rating}"),
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 18.sp,
                            direction: Axis.horizontal,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          costumText(
                            text: "${widget.produt.rating.count}",
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$ ${widget.produt.price + (widget.produt.price * 0.4)}",
                            style: const TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          costumText(
                            text: "\$ ${widget.produt.price}",
                            size: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          costumText(
                            text: "40% Off",
                            size: 14.sp,
                            color: Colors.red,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const costumText(
                        text: "Product Details",
                        fontWeight: FontWeight.w600,
                        size: 14,
                      ),
                      costumText(text: widget.produt.description),
                      SizedBox(
                        height: 12.h,
                      ),
                      const Row(
                        children: [
                          cardOfDetailsProduct(
                            title: "Nearest Store",
                            icon: Icons.location_on_outlined,
                          ),
                          cardOfDetailsProduct(
                            title: "VIP",
                            icon: Icons.lock_outline_rounded,
                          ),
                          cardOfDetailsProduct(
                            title: "Return policy",
                            icon: Icons.restore,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ]),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                      onTap: () =>
                          prodController.addProductToCard(widget.produt),
                      child: Container(
                        width: 140.w,
                        height: 60.h,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: costumText(
                              text: "Add to Card",
                              size: 18.sp,
                              color: primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => () {},
                      child: Container(
                        width: 140.w,
                        height: 60.h,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: costumText(
                              text: "Buy Now",
                              size: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
