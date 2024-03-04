import 'package:e_commerce/view/auth/splash/splash.dart';
import 'package:e_commerce/view/home/PlaceOrder.dart';
import 'package:e_commerce/view/home/homePage.dart';
import 'package:e_commerce/view/home/trendingProducts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 852),
      child: MaterialApp(
        title: "Stylish App",
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
