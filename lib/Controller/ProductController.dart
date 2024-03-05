import 'package:e_commerce/Model/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  List<Product> myProduct = [];

  void addProductToCard(Product product) {
    myProduct.add(product);
    update();
  }

  double calculPrice() {
    double priceTotal = 0;
    for (Product product in myProduct) {
      priceTotal += product.price;
    }
    return priceTotal;
  }
}
