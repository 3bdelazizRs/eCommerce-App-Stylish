import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  // Initial Selected Value
  String dropdownvalue = '42';

  // List of items in our dropdown menu
  var items = [
    '42',
    '43',
    '44',
    '45',
    '46',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const costumText(
          text: "Shopping Bag",
          size: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 155,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      "assets/img/produt3.png",
                      width: 123,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const costumText(
                          text: "Women's Casual Wear",
                          size: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const costumText(
                          text: "Checked Single-Breasted Blazer",
                          size: 13,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                const costumText(text: "Size: "),
                                DropdownButton(
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Row(
                              children: [
                                const costumText(text: "Qty: "),
                                DropdownButton(
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            costumText(text: "Delivery by "),
                            costumText(
                              text: "10 May 2024 ",
                              size: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.confirmation_number_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    costumText(
                      text: "Apply Coupons",
                      size: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                costumText(
                  text: "Select",
                  size: 14,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            const Divider(),
            const costumText(
              text: "Order Payment Details",
              size: 17,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 36,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                costumText(
                  text: "Order Amounts",
                  size: 16,
                  fontWeight: FontWeight.w500,
                ),
                costumText(
                  text: "\$ 150.00",
                  size: 16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const costumText(
                  text: "Delivery Fee",
                  size: 16,
                  fontWeight: FontWeight.w500,
                ),
                costumText(
                  text: "Free",
                  size: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            const SizedBox(
              height: 29,
            ),
            const Divider(),
            const SizedBox(
              height: 29,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const costumText(
                  text: "Order Total",
                  size: 16,
                  fontWeight: FontWeight.w500,
                ),
                const costumText(
                  text: "\$ 150.00",
                  size: 16,
                  fontWeight: FontWeight.w500,
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
          ],
        ),
      ),
    );
  }
}
