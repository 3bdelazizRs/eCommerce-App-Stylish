import 'package:e_commerce/constants/const.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
