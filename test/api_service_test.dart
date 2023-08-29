import 'dart:developer';

import 'package:leitos_lcov/api_services.dart';
import 'package:leitos_lcov/product.dart';
import 'package:test/test.dart';
import 'package:uno/uno.dart';

void main() {
  test('deve retornar uma lista de Product', () {
    final uno = Uno();
    final service = ApiService(uno);
    expect(
        service.GetProducts(),
        completion([
          Product(id: 1, title: 'title', price: 12.0),
          Product(id: 2, title: 'title2', price: 13.0)
        ]));
  });
  test('deve retornar uma lista de Porduct vazia quando houver uma falha', () {
    final uno = Uno();
    final service = ApiService(uno);

    expect(service.GetProducts(), completion([]));
  });
}
