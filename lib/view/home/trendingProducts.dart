import 'package:e_commerce/view/widgets/costumAppBar.dart';
import 'package:e_commerce/view/widgets/costumDrawer.dart';
import 'package:e_commerce/view/widgets/product.dart';
import 'package:e_commerce/view/widgets/searchBar.dart';
import 'package:flutter/material.dart';

class TrendingProducts extends StatefulWidget {
  const TrendingProducts({super.key});

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
  var myProduct = [
    {
      "img": 'assets/img/produt1.png',
      "title": "Black Winter",
      "description":
          "Perhaps the most iconic sneaker of all-time, this original \"Chicago\"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the "
    },
    {
      "img": 'assets/img/produt2.png',
      "title": "Black Winter",
      "description":
          "Perhaps the most iconic sneaker of all-time, this original \"Chicago\"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the "
    },
    {
      "img": 'assets/img/produt3.png',
      "title": "Black Winter",
      "description":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis, fugit quis qui obcaecati animi praesentium a ab accusantium dignissimos aspernatur, placeat doloribus vel tempore dolores! Alias veniam nostrum natus pariatur."
    },
    {
      "img": 'assets/img/produt4.png',
      "title": "Black Winter",
      "description":
          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt explicabo iusto omnis non sequi quam pariatur debitis velit neque! Molestias nihil laborum asperiores explicabo ipsa magnam! Nemo, voluptates quas!"
    },
    {
      "img": 'assets/img/produt5.png',
      "title": "Black Winter",
      "description":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo itaque ullam inventore quaerat, repellat eum! Ipsum ipsam ut quia id cum? Voluptatem error molestiae animi eveniet repellendus sint laborum temporibus."
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
      "description":
          " Perhaps the most iconic sneaker of all-time, this original \"Chicago\"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the "
    },
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CostumAppBar(scaffoldKey: _scaffoldKey),
      drawer: const CostumDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        child: Column(
          children: [
            MySearchBar(
              buildContext: context,
            ),
            Expanded(child: Product(myProduct: myProduct))
          ],
        ),
      ),
    );
  }
}
