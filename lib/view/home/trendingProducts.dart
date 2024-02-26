import 'package:e_commerce/view/widgets/cardofproduct.dart';
import 'package:e_commerce/view/widgets/product.dart';
import 'package:e_commerce/view/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 40),
        child: Column(
          children: [const MySearchBar(), Expanded(child: Product(myProduct: myProduct))],
        ),
      ),
    );
  }
}
