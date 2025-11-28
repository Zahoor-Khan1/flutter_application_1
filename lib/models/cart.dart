
import 'sandwich.dart';

class Cart {
  final List<Sandwich> _items = [];

  List<Sandwich> get items => List.unmodifiable(_items);

  void add(Sandwich sandwich) {
    _items.add(sandwich);
  }

  void remove(Sandwich sandwich) {
    _items.remove(sandwich);
  }

  double get totalPrice {
    return _items.fold(0.0, (sum, sandwich) => sum + sandwich.price);
  }

  bool get isEmpty => _items.isEmpty;
}
