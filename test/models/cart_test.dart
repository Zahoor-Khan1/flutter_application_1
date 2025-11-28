import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/models/cart.dart';
import 'package:sandwich_shop/models/sandwich.dart';

void main() {
  group('Cart Model', () {
    late Cart cart;
    late Sandwich sandwich;

    setUp(() {
      cart = Cart();
      sandwich = Sandwich(
        type: SandwichType.veggieDelight,
        isFootlong: true,
        breadType: BreadType.white,
      );
    });

    test('Cart starts empty', () {
      expect(cart.isEmpty, true);
      expect(cart.items.length, 0);
    });

    test('Add sandwich with quantity', () {
      cart.add(sandwich, quantity: 2);

      expect(cart.items.length, 1);
      expect(cart.items.first.quantity, 2);
    });

    test('Total price is calculated', () {
      cart.add(sandwich, quantity: 2);

      expect(cart.totalPrice, isNonZero);
    });
  });
}
