import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';

class CostumTextField extends StatelessWidget {
  const CostumTextField({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         costumText(text: title),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: borderColor), //<-- SEE HERE
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: borderColor), //<-- SEE HERE
            ),
            hintStyle: const TextStyle(
              fontSize: 12,
              fontFamily: "Montserrat",
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
