
import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/models/cart.dart';
import 'package:sandwich_shop/models/sandwich.dart';

void main() {
  group('Cart Model Tests', () {
    late Cart cart;
    late Sandwich sandwich1;
    late Sandwich sandwich2;

    setUp(() {
      cart = Cart();
      sandwich1 = Sandwich(
        type: SandwichType.veggieDelight,
        isFootlong: true,
        breadType: BreadType.white,
      );
      sandwich2 = Sandwich(
        type: SandwichType.chickenTeriyaki,
        isFootlong: false,
        breadType: BreadType.wheat,
      );
    });

    test('Cart starts empty', () {
      expect(cart.isEmpty, true);
      expect(cart.items.length, 0);
    });

    test('Add sandwich to cart', () {
      cart.add(sandwich1);
      expect(cart.items.length, 1);
      expect(cart.items.contains(sandwich1), true);
    });

    test('Remove sandwich from cart', () {
      cart.add(sandwich1);
      cart.remove(sandwich1);
      expect(cart.items.length, 0);
    });

    test('Calculate total price correctly', () {
      cart.add(sandwich1);
      cart.add(sandwich2);
      expect(cart.totalPrice, sandwich1.price + sandwich2.price);
    });
  });
}
