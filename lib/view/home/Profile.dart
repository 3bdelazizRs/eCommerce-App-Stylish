import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/costumTextField.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const costumText(
          text: "Profile",
          size: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 110,
                    height: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/img/avatar.png",
                        width: 96,
                        height: 96,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(100),
                              color: bleuColor),
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                          )))
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              const costumText(
                text: "Personal Details",
                size: 18,
                fontWeight: FontWeight.w600,
              ),
              const CostumTextField(
                title: "Email Address",
              ),
              const SizedBox(
                height: 28,
              ),
              const CostumTextField(
                title: "Password",
              ),
              const SizedBox(
                height: 14,
              ),
              GestureDetector(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ForgotPassword(),
                //   ),
                // ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Change Password",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: primaryColor,
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const Divider(),
              const costumText(
                text: "Business Address Details",
                size: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 36,
              ),
              const CostumTextField(
                title: "Pincode",
              ),
              const SizedBox(
                height: 28,
              ),
              const CostumTextField(
                title: "Address",
              ),
              const SizedBox(
                height: 28,
              ),
              const CostumTextField(
                title: "City",
              ),
              const SizedBox(
                height: 28,
              ),
              const CostumTextField(
                title: "State",
              ),
              const SizedBox(
                height: 28,
              ),
              const CostumTextField(
                title: "Country",
              ),
              const SizedBox(
                height: 28,
              ),
              /*Bank Account Details*/
              const Divider(),
              const costumText(
                text: "Bank Account Details",
                size: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 36,
              ),
              const CostumTextField(
                title: "Bank Account Number",
              ),
              const SizedBox(
                height: 28,
              ),
              const CostumTextField(
                title: "Account Holder's Name",
              ),
              const SizedBox(
                height: 28,
              ),
              const CostumTextField(
                title: "IFSC Code",
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
