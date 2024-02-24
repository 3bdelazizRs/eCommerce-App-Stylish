import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/cardannonce.dart';
import 'package:e_commerce/view/widgets/cardofmenu.dart';
import 'package:e_commerce/view/widgets/cardofproduct.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: menuCircleColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: const Icon(Icons.sort),
                ),
                Row(
                  children: [
                    Image.asset("assets/img/logo.png", width: 39, height: 31),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Stylish",
                      style: TextStyle(
                          color: bleuColor,
                          fontSize: 18,
                          fontFamily: 'LibreCaslonText',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                CircleAvatar(
                  child: Image.asset("assets/img/avatar.png"),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(1, 1),
                    blurRadius: 1,
                    spreadRadius: 1)
              ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Search any Product..",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_voice_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "All Featured",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
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
            const SizedBox(
              height: 10,
            ),
            /* TOP MENU OF CHOICE*/
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 90,
                    padding: const EdgeInsets.symmetric(horizontal: 11),
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
                    height: 190,
                    width: 343,
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
                                left: 14,
                                top: 40,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "50-40% OFF",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "Now in (product)",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
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
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 32,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Shop Now",
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
                              )
                            ],
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
                          activeDotColor: dotsColor),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  /* Deal of the Day CARD */
                  CardAnnonce(
                    text: "Deal of the Day",
                    descpition: "22h 55m 20s remaining ",
                    icon: Icons.alarm,
                    color: dealColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 340,
                    height: 241,
                    child: ListView.builder(
                        itemCount: 9,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, item) {
                          return const CardOfProduct();
                        }),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    height: 84,
                    width: 343,
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
                  const SizedBox(
                    height: 16,
                  ),
                  CardAnnonce(
                      text: "Trending Products",
                      descpition: "Last Date 29/03/24",
                      icon: Icons.calendar_month_outlined,
                      color: trendingColor),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    width: 340,
                    height: 200,
                    child: ListView.builder(
                        itemCount: 9,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, item) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                          "assets/img/image 18.png")),
                                  const Text(
                                    "IWC Schaffhausen \n2021 Pilot's Watch\n\"SIHH 2019\" 44mm",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    "\$ 650",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "\$ 1599",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 12,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "40% Off",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 10,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    width: 343,
                    height: 270,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      children: [
                        Image.asset("assets/img/image 10.png"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "New Arrivals ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text("Summer' 25 Collections"),
                                ],
                              ),
                              Container(
                                width: 90,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: primaryColor,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
