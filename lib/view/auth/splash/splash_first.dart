import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/auth/signIn.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashFirst extends StatefulWidget {
  const SplashFirst({super.key});

  @override
  State<SplashFirst> createState() => _SplashFirstState();
}

class _SplashFirstState extends State<SplashFirst> {
  final controller = PageController();
  bool isLastPage = false;
  int nbPage = 1;
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text('$nbPage',
                style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            const Text(
              "/3",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
            },
            child: const Text("skip",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      nbPage = index + 1;
                      isLastPage = index == 2;
                    });
                  },
                  controller: controller,
                  children: const [
                    CenterScreen(
                      img: "assets/img/fashion shop-rafiki 1.png",
                      text: "Choose Products",
                    ),
                    CenterScreen(
                      img: "assets/img/Sales consulting-pana 1.png",
                      text: "Make Payment",
                    ),
                    CenterScreen(
                      img: "assets/img/Shopping bag-rafiki 1.png",
                      text: "Get Your Order",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // GestureDetector(
                    //   onTap: () => controller.jumpTo(0),
                    //   child: const Text(
                    //     "Prev",
                    //     style: TextStyle(
                    //         fontSize: 18,
                    //         fontFamily: "Montserrat",
                    //         color: Colors.grey,
                    //         fontWeight: FontWeight.w600),
                    //   ),
                    // ),
                    const SizedBox(width: 107, child: Text("")),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          activeDotColor: Colors.black),
                    ),
                    isLastPage
                        ? GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignIn(),
                              ),
                            ),
                            child: SizedBox(
                              width: 107,
                              child: Text(
                                "Get Started",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Montserrat",
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () => controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut),
                            child: SizedBox(
                              width: 107,
                              child: Text(
                                "Next",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Montserrat",
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
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

class CenterScreen extends StatelessWidget {
  const CenterScreen({
    super.key,
    required this.img,
    required this.text,
  });
  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img),
        Text(
          text,
          style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 24,
              fontWeight: FontWeight.w900),
        ),
        const Text(
          "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Montserrat",
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
