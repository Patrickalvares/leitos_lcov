import 'package:leitos_lcov/leitor_lcov.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('deve pegar % de cobertura', () {
    final result = coverage('./coverage/lcov.info');
    expect(result, '100%');
  });
}
