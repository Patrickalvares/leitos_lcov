import 'package:leitos_lcov/stream.dart';
import 'package:test/test.dart';

void main() {
  test('deve completar a requisição trazendo uma lista de nomes', () {
    final stream = getStreamList();
    expect(stream, emitsInOrder(['masterclass', 'flutterando']));
  });
}
