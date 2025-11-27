
import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/models/sandwich.dart';

void main() {
  group('Sandwich Model Tests', () {
    test('name getter returns correct sandwich name', () {
      final sandwich = Sandwich(
        type: SandwichType.veggieDelight,
        isFootlong: true,
        breadType: BreadType.white,
      );

      expect(sandwich.name, 'Veggie Delight');
    });

    test('image getter returns correct image path for footlong', () {
      final sandwich = Sandwich(
        type: SandwichType.chickenTeriyaki,
        isFootlong: true,
        breadType: BreadType.wheat,
      );

      expect(sandwich.image, 'assets/images/chickenTeriyaki_footlong.png');
    });

    test('image getter returns correct image path for six-inch', () {
      final sandwich = Sandwich(
        type: SandwichType.tunaMelt,
        isFootlong: false,
        breadType: BreadType.wholemeal,
      );

      expect(sandwich.image, 'assets/images/tunaMelt_six_inch.png');
    });
  });
}
