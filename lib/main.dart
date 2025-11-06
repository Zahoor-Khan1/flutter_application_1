import 'package:flutter/material.dart';

void main() {
    runApp(const App());

  //runApp(const MyApp()); for the first commint I have comment out these line.
}
class App extends StatelessWidget {
  const App({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sandwich Shop App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Sandwich Counter')),
body: Align(
  alignment: Alignment.center,

  child: Container(
    width:400,
    height: 600,
    color: Colors.blue,
    child: const SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OrderItemDisplay(2, 'Footlong'),
        OrderItemDisplay(4, 'Sub'),
        OrderItemDisplay(1, 'Mini'),
        OrderItemDisplay(3, 'Veg'),
        OrderItemDisplay(2, 'Ham'),
        OrderItemDisplay(4, 'Sub'),
        OrderItemDisplay(1, 'Mini'),
        OrderItemDisplay(3, 'Veg'),
        OrderItemDisplay(2, 'Beef'),
        OrderItemDisplay(4, 'Sub'),
        OrderItemDisplay(1, 'Veg'),
        OrderItemDisplay(3, 'Veg'),
        OrderItemDisplay(2, 'Smash'),
        OrderItemDisplay(4, 'Sub'),
        OrderItemDisplay(1, 'Ham'),
        OrderItemDisplay(3, 'Veg'),
        OrderItemDisplay(2, 'Chicken'),
        OrderItemDisplay(4, 'BBQ'),
        OrderItemDisplay(1, 'Ham'),
        OrderItemDisplay(3, 'Veg'),

      ],
    ),
  ),
),
      ),
      ),
   );
  }
}

class OrderItemDisplay extends StatelessWidget {
  final String itemType;
  final int quantity;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

@override
Widget build(BuildContext context) {
  return Text('$quantity $itemType sandwich(es): ${'🥪' * quantity}',
  style: const TextStyle(
    color: Colors.green,
    fontWeight:FontWeight.bold,
    fontSize: 20,
  ),
);
}
}

