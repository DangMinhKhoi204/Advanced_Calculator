import 'package:flutter_test/flutter_test.dart';
import 'package:advanced_calculator/utils/calculator_logic.dart';
import 'dart:math' as math;

void main() {

  test('basic expression precedence', () {
    final v = CalculatorLogic.evaluate('(5 + 3) * 2 - 4 / 2', isDegree: true);
    expect(v, 14.0);
  });

  test('sin/cos 45 deg approx', () {
    final v = CalculatorLogic.evaluate('sin(45) + cos(45)', isDegree: true);
    expect(v, closeTo(1.41421356, 1e-6));
  });

  test('factorial inline', () {
    final v = CalculatorLogic.evaluate('5!', isDegree: true);
    expect(v, 120.0);
  });

  test('pi * sqrt9', () {
    final v = CalculatorLogic.evaluate('2 * π * √9', isDegree: true);
    expect(v, closeTo(2 * math.pi * 3, 1e-9));
  });
}
