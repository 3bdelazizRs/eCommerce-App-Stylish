import 'package:e_commerce/Services/productAPI.dart';
import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/Shimmer.dart';
import 'package:e_commerce/view/widgets/cardAnnonce.dart';
import 'package:e_commerce/view/widgets/cardLoding.dart';
import 'package:e_commerce/view/widgets/cardofmenu.dart';
import 'package:e_commerce/view/widgets/cardofproduct.dart';
import 'package:e_commerce/view/widgets/costumAppBar.dart';
import 'package:e_commerce/view/widgets/costumDrawer.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:e_commerce/view/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();
  var topMenu = [
    {"title": "Beauty", "image": "assets/img/Ellipse 4.png"},
    {"title": "Fashion", "image": "assets/img/Ellipse 5.png"},
    {"title": "Kids", "image": "assets/img/Ellipse 6.png"},
    {"title": "Mens", "image": "assets/img/Ellipse 7.png"},
    {"title": "Womens", "image": "assets/img/Ellipse 8.png"},
    {"title": "Gifts", "image": "assets/img/Ellipse 9.png"},
  ];
  final _shimmerGradient = const LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List myItem = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CostumDrawer(),
      appBar: CostumAppBar(scaffoldKey: _scaffoldKey),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(right: 10.r, left: 10.r),
        child: Column(
          children: [
            MySearchBar(
              buildContext: context,
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Featured",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Container(
                      width: 61.w,
                      height: 24.h,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sort",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_down_outlined,
                            size: 20.sp,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 61.w,
                        height: 24.h,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Filter",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.filter_alt_outlined,
                              size: 20.sp,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            /* TOP MENU OF CHOICE*/
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 90.h,
                    padding: EdgeInsets.symmetric(horizontal: 11.r),
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
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: topMenu.length,
                        itemBuilder: (context, index) {
                          return CardOfMenu(
                            text: topMenu[index]["title"]!,
                            img: topMenu[index]["image"]!,
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 190.h,
                    width: 343.w,
                    child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: controller,
                        itemCount: 3,
                        itemBuilder: (context, item) {
                          return Stack(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(
                                    "assets/img/Rectangle 48.png",
                                    fit: BoxFit.fill),
                              ),
                              Positioned(
                                left: 14.r,
                                top: 40.r,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "50-40% OFF",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Now in (product)",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    const Text(
                                      "All colours",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Container(
                                      width: 100.w,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Shop Now",
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
                              )
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: SwapEffect(
                          dotHeight: 10.h,
                          dotWidth: 10.h,
                          activeDotColor: dotsColor),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  /* Deal of the Day CARD */
                  CardAnnonce(
                    text: "Deal of the Day",
                    descpition: "22h 55m 20s remaining ",
                    icon: Icons.alarm,
                    color: dealColor,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 170.w,
                    height: 241.h,
                    child: FutureBuilder(
                        future: ProductAPI().GetData(),
                        builder: (context, snapshot) => snapshot.hasData
                            ? ListView.builder(
                                itemCount: snapshot.data?.data
                                    .length, // prodController.homeProduct.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, item) {
                                  return Padding(
                                      padding: EdgeInsets.only(right: 12.r),
                                      child: CardOfProduct(
                                        isOnline: true,
                                        img: snapshot.data!.data[item]
                                            .image, //prodController.homeProduct[item].img,
                                        title: snapshot.data!.data[item].title,
                                        description: snapshot
                                            .data!.data[item].description,
                                      ));
                                })
                            : ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, item) => Shimmer(
                                      linearGradient: _shimmerGradient,
                                      child: const CardLoding(),
                                    ))),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    height: 84.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset("assets/img/Rectangle 56.png"),
                        const SizedBox(
                          width: 24,
                        ),
                        const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              costumText(
                                text: "Special Offers",
                                size: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 8),
                              costumText(
                                  text:
                                      "We make sure you get the \noffer you need at best prices"),
                            ])
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CardAnnonce(
                      text: "Trending Products",
                      descpition: "Last Date 29/03/24",
                      icon: Icons.calendar_month_outlined,
                      color: trendingColor),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 170.w,
                    height: 241.h,
                    child: FutureBuilder(
                        future: ProductAPI().GetData(),
                        builder: (context, snapshot) {
                          var menClothingProducts = snapshot.data?.data
                              .where((product) =>
                                  product.category == "jewelery")
                              .toList();
                          return snapshot.hasData
                              ? ListView.builder(
                                  itemCount: menClothingProducts!
                                      .length, // prodController.homeProduct.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, item) {
                                    return Padding(
                                        padding: EdgeInsets.only(right: 12.r),
                                        child: CardOfProduct(
                                          isOnline: true,
                                          img: menClothingProducts[item]
                                              .image, //prodController.homeProduct[item].img,
                                          title:
                                              menClothingProducts[item].title,
                                          description: menClothingProducts[item]
                                              .description,
                                        ));
                                  })
                              : ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (context, item) => Shimmer(
                                        linearGradient: _shimmerGradient,
                                        child: const CardLoding(),
                                      ));
                        }),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Container(
                    width: 343.w,
                    height: 270.h,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      children: [
                        SizedBox(
                            width: 343.w,
                            height: 204.h,
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.r),
                                    topRight: Radius.circular(8.r)),
                                child: Image.asset(
                                  "assets/img/image 10.png",
                                  fit: BoxFit.fill,
                                ))),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    "New Arrivals ",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  costumText(
                                    text: "Summer' 25 Collections",
                                    size: 16.sp,
                                  ),
                                ],
                              ),
                              Container(
                                width: 89.w,
                                height: 28.h,
                                decoration: BoxDecoration(
                                    color: primaryColor,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
