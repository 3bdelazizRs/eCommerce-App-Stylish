import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/widgets/cardofproductDetails.dart';
import 'package:e_commerce/view/widgets/costumtext.dart';
import 'package:e_commerce/view/widgets/product.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductsDetails extends StatefulWidget {
  ProductsDetails({super.key});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  final controller = PageController();
  var myProduct = [
    {
      "img": 'assets/img/produt1.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt2.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt3.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt4.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt5.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt6.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt7.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt2.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt3.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt4.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt6.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt1.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt7.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt3.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
    {
      "img": 'assets/img/produt2.png',
      "title": "Black Winter",
      "description": "Autumn And Winter Casual \ncotton-padded jacket..."
    },
  ];

  final List<String> _sizeList = ["6 UK", "7 UK", "8 UK", "9 UK", "10 UK"];

  int _indexSelect = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: menuCircleColor,
                  borderRadius: BorderRadius.circular(100)),
              child: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          children: [
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 235,
                    child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: controller,
                        itemCount: 3,
                        itemBuilder: (context, item) {
                          return Container(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                "assets/img/produt9.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: SwapEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          activeDotColor: primaryColor),
                    ),
                  ),
                  Row(
                    children: [
                      const costumText(
                        text: "Size: ",
                        fontWeight: FontWeight.w700,
                        size: 14,
                      ),
                      costumText(
                        text: _sizeList[_indexSelect],
                        fontWeight: FontWeight.w700,
                        size: 14,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 35,
                    child: ListView.builder(
                        itemCount: _sizeList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: GestureDetector(
                              onTap: () => setState(() {
                                _indexSelect = index;
                              }),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: _indexSelect == index
                                        ? dotsColor
                                        : Colors.white,
                                    border: Border.all(
                                        color: dotsColor, width: 1.5),
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                  child: costumText(
                                    text: _sizeList[index],
                                    color: _indexSelect == index
                                        ? Colors.white
                                        : dotsColor,
                                    fontWeight: FontWeight.w600,
                                    size: 14,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const costumText(
                    text: "NIke Sneakers",
                    fontWeight: FontWeight.w700,
                    size: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: starColor, size: 16),
                      Icon(Icons.star, color: starColor, size: 16),
                      Icon(Icons.star, color: starColor, size: 16),
                      Icon(Icons.star, color: starColor, size: 16),
                      const Icon(Icons.star, color: Colors.grey, size: 16),
                      const SizedBox(
                        width: 4,
                      ),
                      const costumText(
                        text: "56890",
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Text(
                        "\$ 2999",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "\$ 1500",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "50% Off",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const costumText(
                    text: "Product Details",
                    fontWeight: FontWeight.w600,
                    size: 14,
                  ),
                  const costumText(
                      text:
                          "Perhaps the most iconic sneaker of all-time, this original \"Chicago\"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the "),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      cardOfDetailsProduct(
                        title: "Nearest Store",
                        icon: Icons.location_on_outlined,
                      ),
                      cardOfDetailsProduct(
                        title: "VIP",
                        icon: Icons.lock_outline_rounded,
                      ),
                      cardOfDetailsProduct(
                        title: "Return policy",
                        icon: Icons.restore,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 136,
                          child: Image.asset(
                            "assets/img/cartPay.png",
                            fit: BoxFit.fill,
                          )),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                          height: 40,
                          width: 136,
                          child: Image.asset(
                            "assets/img/cartBuy.png",
                            fit: BoxFit.fill,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const costumText(
                    text: "Similar To",
                    size: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  
                ]),
                Expanded(
                    child: Product(
                      myProduct: myProduct,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
