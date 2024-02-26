import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/bottomBar.dart';
import 'package:flutter/material.dart';

class HomeSplash extends StatelessWidget {
  const HomeSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/img/unsplash_fouVDmGXoPI.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              )),
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const Text(
                    "You want \nAuthentic, here \nyou go!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: "Montserrat",
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Find it here, buy it now!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomBarScreen(),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: 279,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
