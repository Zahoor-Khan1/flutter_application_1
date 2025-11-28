import 'sandwich.dart';
import '../repositories/pricing_repository.dart';

class CartItem {
  final Sandwich sandwich;
  final int quantity;

  const CartItem({
    required this.sandwich,
    required this.quantity,
  });
}

class Cart {
  final List<CartItem> _items = [];
  final PricingRepository pricingRepository = PricingRepository();

  List<CartItem> get items => List.unmodifiable(_items);

  void add(Sandwich sandwich, {int quantity = 1}) {
    _items.add(
      CartItem(sandwich: sandwich, quantity: quantity),
    );
  }

  void remove(CartItem item) {
    _items.remove(item);
  }

  double get totalPrice {
    double total = 0;

    for (var item in _items) {
      total += pricingRepository.calculateTotal(
        quantity: item.quantity,
        isFootlong: item.sandwich.isFootlong,
      );
    }

    return total;
  }

  bool get isEmpty => _items.isEmpty;

  /// ✅ This is what your UI must use
  int get totalItems {
    int count = 0;
    for (var item in _items) {
      count += item.quantity;
    }
    return count;
  }
}
