import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce/constants/const.dart';
import 'package:e_commerce/view/home/SearchPage.dart';
import 'package:e_commerce/view/home/homePage.dart';
import 'package:e_commerce/view/home/settingPage.dart';
import 'package:e_commerce/view/home/shopPage.dart';
import 'package:e_commerce/view/home/trendingProducts.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late List _pages;
  int _selectPageIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': const  HomePage()},
      {'page': const TrendingProducts()},
      {'page': const ShopPage()},
      {'page': const SearchPage()},
      {'page': const SettingPage()},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(
              Icons.home_outlined,
              size: 30,
              color: _selectPageIndex == 0 ? primaryColor : Colors.black,
            ),
            Icon(
              Icons.favorite_border,
              size: 30,
              color: _selectPageIndex == 1 ? primaryColor : Colors.black,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: _selectPageIndex == 2 ? primaryColor : Colors.black,
            ),
            Icon(
              Icons.search,
              size: 30,
              color: _selectPageIndex == 3 ? primaryColor : Colors.black,
            ),
            Icon(
              Icons.settings,
              size: 30,
              color: _selectPageIndex == 4 ? primaryColor : Colors.black,
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.grey.shade100,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _selectPageIndex = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: _pages[_selectPageIndex]['page']);
  }
}
