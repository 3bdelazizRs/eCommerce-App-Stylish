import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/auth/forgotpassword.dart';
import 'package:e_commerce/view/auth/signup.dart';
import 'package:e_commerce/view/home/homeSplash.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isObsPassword = true;

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
                "Welcome\nBack!",
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
                obscureText: isObsPassword,
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
                              isObsPassword = !isObsPassword;
                            }),
                        child: Icon(isObsPassword
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
                height: 9,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPassword(),
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 67,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeSplash(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: const Center(
                    child: Text(
                      "Login",
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
                height: 75,
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
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  ),
                  child: Text.rich(
                    TextSpan(
                        text: "Create An Account ",
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: "Sign Up",
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
