import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/models/sandwich.dart';

void main() {
  group('Sandwich Model Tests', () {
    test('Correct name for Veggie Delight', () {
      final sandwich = Sandwich(
        type: SandwichType.veggieDelight,
        isFootlong: true,
        breadType: BreadType.white,
      );

      expect(sandwich.name, 'Veggie Delight');
    });

    test('Correct name for Chicken Teriyaki', () {
      final sandwich = Sandwich(
        type: SandwichType.chickenTeriyaki,
        isFootlong: false,
        breadType: BreadType.white,
      );

      expect(sandwich.name, 'Chicken Teriyaki');
    });

    test('Correct name for Tuna Melt', () {
      final sandwich = Sandwich(
        type: SandwichType.tunaMelt,
        isFootlong: true,
        breadType: BreadType.wheat,
      );

      expect(sandwich.name, 'Tuna Melt');
    });

    test('Correct name for Meatball Marinara', () {
      final sandwich = Sandwich(
        type: SandwichType.meatballMarinara,
        isFootlong: false,
        breadType: BreadType.wholemeal,
      );

      expect(sandwich.name, 'Meatball Marinara');
    });

    test('Correct image path for footlong sandwich', () {
      final sandwich = Sandwich(
        type: SandwichType.veggieDelight,
        isFootlong: true,
        breadType: BreadType.white,
      );

      expect(
        sandwich.image,
        'assets/images/veggieDelight_footlong.png',
      );
    });

    test('Correct image path for six-inch sandwich', () {
      final sandwich = Sandwich(
        type: SandwichType.veggieDelight,
        isFootlong: false,
        breadType: BreadType.white,
      );

      expect(
        sandwich.image,
        'assets/images/veggieDelight_six_inch.png',
      );
    });
  });
}
