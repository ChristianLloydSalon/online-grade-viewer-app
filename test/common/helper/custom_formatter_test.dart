import 'package:app/common/helper/custom_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('toTitle()', () {
    const mockValue = 'hello world';
    const expectedValue = 'Hello world';
    expect(toTitle(mockValue), expectedValue);
  });

  test('toCamelCase()', () {
    const mockValue = 'ENVIRONMENT_VARIABLE';
    const expectedValue = 'environmentVariable';
    expect(toCamelCase(mockValue), expectedValue);
  });
}