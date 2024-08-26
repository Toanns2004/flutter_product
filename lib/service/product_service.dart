import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/Product.dart';

class ProductService {
  final String apiUrl = 'https://run.mocky.io/v3/f7a04122-2df4-41f8-8231-1622c64b09ca';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
