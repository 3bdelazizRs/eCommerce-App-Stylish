import 'package:e_commerce/Controller/ProductController.dart';
import 'package:e_commerce/Services/productAPI.dart';
import 'package:e_commerce/view/widgets/Shimmer.dart';
import 'package:e_commerce/view/widgets/cardLoding.dart';
import 'package:e_commerce/view/widgets/costumAppBar.dart';
import 'package:e_commerce/view/widgets/costumDrawer.dart';
import 'package:e_commerce/view/widgets/product.dart';
import 'package:e_commerce/view/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class TrendingProducts extends StatefulWidget {
  const TrendingProducts({super.key});

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _shimmerGradient = const LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ProductAPI().GetData(),
        builder: (context, snapshot) => Scaffold(
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
                    snapshot.hasData
                        ? Expanded(
                            child: Product(myProduct: snapshot.data!.data))
                        : Expanded(
                            child: MasonryGridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 10,
                            crossAxisCount: 2,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            itemBuilder: (context, index) {
                              return Shimmer(
                                linearGradient: _shimmerGradient,
                                child: const CardLoding(),
                              );
                            },
                          )),
                  ],
                ),
              ),
            ));
  }
}
