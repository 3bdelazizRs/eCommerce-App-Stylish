import 'package:e_commerce/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 30),
        child: SingleChildScrollView(
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
                    child: const Icon(Icons.menu),
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
                height: 24,
              ),
              /* TOP MENU OF CHOICE*/
              Container(
                height: 90,
                padding: const EdgeInsets.symmetric(horizontal: 11),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(1, 1),
                      blurRadius: 1,
                      spreadRadius: 1)
                ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/img/Ellipse 4.png"),
                            const Text(
                              "Beauty",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 190,
                child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: controller,
                    itemCount: 3,
                    itemBuilder: (context, item) {
                      return Stack(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              "assets/img/Rectangle 48.png",
                            ),
                          ),
                          Positioned(
                            left: 30,
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
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: SwapEffect(
                    dotHeight: 10, dotWidth: 10, activeDotColor: dotsColor),
              ),
              const SizedBox(
                height: 16,
              ),
              /* Deal of the Day CARD */
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 343,
                height: 60,
                decoration: BoxDecoration(
                    color: dealColor, borderRadius: BorderRadius.circular(6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Deal of the Day",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.white,
                            ),
                            Text(
                              "22h 55m 20s remaining ",
                              style: TextStyle(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
