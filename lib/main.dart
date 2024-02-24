import 'package:e_commerce/view/auth/splash/splash.dart';
import 'package:e_commerce/view/home/homePage.dart';
import 'package:e_commerce/view/home/homeSplash.dart';
import 'package:e_commerce/view/home/trendingProducts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Stylish App",
      debugShowCheckedModeBanner: false,
      home: TrendingProducts(),
    );
  }
}
