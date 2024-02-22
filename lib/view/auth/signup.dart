import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/auth/SignIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isObsPassword1 = true;
  bool isObsPassword2 = true;
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
                "Create an \naccount",
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
                    prefixIcon: const Icon(Icons.person_2),
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      color: Colors.grey,
                    ),
                    hintText: "Username or Email"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: isObsPassword1,
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
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                        onTap: () => setState(() {
                              isObsPassword1 = !isObsPassword1;
                            }),
                        child: Icon(isObsPassword1
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_moderator_outlined)),
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      color: Colors.grey,
                    ),
                    hintText: "Password"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: isObsPassword2,
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
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                        onTap: () => setState(() {
                              isObsPassword2 = !isObsPassword2;
                            }),
                        child: Icon(isObsPassword2
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_moderator_outlined)),
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      color: Colors.grey,
                    ),
                    hintText: "ConfirmPassword"),
              ),
              const SizedBox(
                height: 9,
              ),
              Text.rich(
                TextSpan(
                    text: "By clicking the",
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: " Register ",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          color: primaryColor,
                        ),
                      ),
                      const TextSpan(
                        text: "button, you agree \nto the public offer",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          color: Colors.grey,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: const Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "- OR Continue with -",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Montserrat",
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(50),
                        color: circleColor),
                    child: Image.asset("assets/img/google 1.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(50),
                        color: circleColor),
                    child: Image.asset("assets/img/apple 1.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(50),
                        color: circleColor),
                    child: Image.asset("assets/img/facebook-app-symbol 1.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () => Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ),
                  ),
                  child: Text.rich(
                    TextSpan(
                        text: "I Already Have an Account ",
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: "Login",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: primaryColor,
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                color: primaryColor,
                              ))
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
