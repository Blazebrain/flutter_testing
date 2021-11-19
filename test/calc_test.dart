import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/calc.dart';

void main() {
  Calculator? calculator;

  setUp(() {
    calculator = Calculator();
  });
  setUpAll(() {
    print('prints only onmce');
  });

  group(
    'Calculator',
    () {
      test('check constructor', () {
        expect(calculator, isNotNull);
      });
      test('add returns 4 when adding 2 and 2', () {
        // ACT
        final value = calculator!.add(2, 2);

        // ASSERT
        expect(value, 4);
      });
      test('subract returns 2 when substracting 2 from 4', () {
        // ACT
        final value = calculator!.subtract(4, 2);

        // ASSERT
        expect(value, isA<double>());
      });
      test('divide returns 2 when 4 is divided by 2', () {
        //ACT
        final value = calculator!.divide(4, 2);
        // ASSERT
        expect(value, 2);
      });

      test('calculator throws exception when divided by 0', () {
        // ASSERT
        expect(() => calculator!.divide(4, 0), throwsArgumentError);
      });
    },
  );
}
