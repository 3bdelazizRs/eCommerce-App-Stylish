import 'dart:async';

import 'package:e_commerce/view/auth/splash/splash_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _leftAnimationController;
  late AnimationController _rightAnimationController;
  late Animation<double> _leftAnimation;
  late Animation<double> _rightAnimation;

  @override
  void initState() {
    super.initState();

    // Left container animation
    _leftAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _leftAnimation = Tween<double>(begin: -200.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _leftAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    // Right container animation
    _rightAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _rightAnimation = Tween<double>(begin: 200.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _rightAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    // Start animations
    _leftAnimationController.forward();
    _rightAnimationController.forward();

    // Navigate to another screen after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashFirst()),
      );
    });
  }

  @override
  void dispose() {
    _leftAnimationController.dispose();
    _rightAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _leftAnimationController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(_leftAnimation.value, 0.0),
                  child: Center(
                    child: Image.asset(
                      "assets/img/logo.png",
                    ),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: _rightAnimationController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(_rightAnimation.value, 0.0),
                  child: Center(
                    child: costumText(
                      text: "Stylish",
                      size: 40.sp,
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

