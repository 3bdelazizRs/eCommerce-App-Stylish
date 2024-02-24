import 'package:e_commerce/constants/const.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Forgot\npassword?",
                style: TextStyle(
                    fontSize: 36,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 36,
              ),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: fillBorderColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: borderColor), //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: borderColor), //<-- SEE HERE
                    ),
                    prefixIcon: const Icon(Icons.mail),
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      color: Colors.grey,
                    ),
                    hintText: "Enter your email address"),
              ),
              const SizedBox(
                height: 26,
              ),
              Text.rich(
                TextSpan(
                    text: "* ",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      color: primaryColor,
                    ),
                    children: const [
                      TextSpan(
                          text:
                              "We will send you a message to set or reset \nyour new password",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            color: Colors.grey,
                          ))
                    ]),
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: const Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
