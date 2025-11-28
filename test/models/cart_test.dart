
import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/models/cart.dart';
import 'package:sandwich_shop/models/sandwich.dart';
import 'package:sandwich_shop/repositories/pricing_repository.dart';

void main() {
  group('Cart Model with PricingRepository', () {
    late Cart cart;
    late PricingRepository pricingRepository;
    late Sandwich footlongSandwich;
    late Sandwich sixInchSandwich;

    setUp(() {
      pricingRepository = PricingRepository(sixInchPrice: 7.0, footlongPrice: 11.0);
      cart = Cart(pricingRepository: pricingRepository);

      footlongSandwich = Sandwich(
        type: SandwichType.veggieDelight,
        isFootlong: true,
        breadType: BreadType.white,
      );

      sixInchSandwich = Sandwich(
        type: SandwichType.chickenTeriyaki,
        isFootlong: false,
        breadType: BreadType.wheat,
      );
    });

    test('Cart starts empty', () {
      expect(cart.isEmpty, true);
      expect(cart.items.length, 0);
    });

    test('Add sandwiches and calculate total price using PricingRepository', () {
      cart.add(footlongSandwich);
      cart.add(sixInchSandwich);

      final expectedTotal = pricingRepository.calculateTotal(quantity: 1, isFootlong: true) +
          pricingRepository.calculateTotal(quantity: 1, isFootlong: false);

      expect(cart.totalPrice, expectedTotal);
    });
  });
}
