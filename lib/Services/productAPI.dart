import 'dart:convert';
import 'package:e_commerce/Model/product.dart';
import 'package:http/http.dart' as http;

class ProductAPI {
  Future<DataProduct?> GetData() async {
    var url = Uri.parse("https://fakestoreapi.com/products/");
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);

        var res = DataProduct.fromJson(body);
        return res;
      }
    } catch (e) {
      print(e);
    }
  }
}
