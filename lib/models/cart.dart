
import 'sandwich.dart';
import '../repositories/pricing_repository.dart';

class Cart {
  final List<Sandwich> _items = [];
  final PricingRepository pricingRepository;

  Cart({required this.pricingRepository});

  List<Sandwich> get items => List.unmodifiable(_items);

  void add(Sandwich sandwich) {
    _items.add(sandwich);
  }

  void remove(Sandwich sandwich) {
    _items.remove(sandwich);
  }

  double get totalPrice {
    // Group sandwiches by size and calculate total using PricingRepository
    final footlongCount = _items.where((s) => s.isFootlong).length;
    final sixInchCount = _items.where((s) => !s.isFootlong).length;

    return pricingRepository.calculateTotal(
          quantity: footlongCount,
          isFootlong: true,
        ) +
        pricingRepository.calculateTotal(
          quantity: sixInchCount,
          isFootlong: false,
        );
  }

  bool get isEmpty => _items.isEmpty;
}
