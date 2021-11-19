import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/user.dart';

void main() {
  test(
    'Given user with age 24 when birthday is called, then user is old',
    () async {
      //ARRANGE
      final user = User(24, 'david');

      //ACT
      user.birthday();

      //ASSERT
      expect(user.age, 25);
    },
  );
}
