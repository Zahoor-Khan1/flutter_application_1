import 'sandwich.dart';
import '../repositories/pricing_repository.dart';

class CartItem {
  final Sandwich sandwich;
  final int quantity;

  CartItem({
    required this.sandwich,
    required this.quantity,
  });
}

class Cart {
  final List<CartItem> _items = [];
  final PricingRepository pricingRepository = PricingRepository();

  List<CartItem> get items => List.unmodifiable(_items);

  void add(Sandwich sandwich, {int quantity = 1}) {
    _items.add(CartItem(sandwich: sandwich, quantity: quantity));
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

  int get totalItems => _items.length;
  bool get isEmpty => _items.isEmpty;
}
