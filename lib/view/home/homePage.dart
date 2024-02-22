import 'package:e_commerce/constants/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 30),
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
            )
          ],
        ),
      ),
    );
  }
}
