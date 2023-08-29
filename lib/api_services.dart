import 'package:leitos_lcov/product.dart';
import 'package:uno/uno.dart';

class ApiService {
  final Uno uno;

  ApiService(this.uno);

  Future<List<Product>> GetProducts() async {
    try {
      final response = await uno.get('/product');
      final list = response.data as List;
      return list.map((e) => Product.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }
}
