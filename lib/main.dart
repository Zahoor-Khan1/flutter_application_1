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
  alignment: Alignment.topLeft,

  child: Container(
    width:800,
    height: 40,
    color: Colors.blue,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OrderItemDisplay(2, 'Footlong'),
        OrderItemDisplay(4, 'Sub'),
        OrderItemDisplay(1, 'Mini'),
      ],
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
  return Text('$quantity $itemType sandwich(es): ${'🥪' * quantity}');
}
}

