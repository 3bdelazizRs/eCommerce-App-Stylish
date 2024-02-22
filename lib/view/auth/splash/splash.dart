import 'dart:async';

import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/auth/splash/splash_first.dart';


import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashFirst(),
        ),
      );
    });
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/logo.png",
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Stylish",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 40,
                  fontFamily: 'LibreCaslonText',
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
