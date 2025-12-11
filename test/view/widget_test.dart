import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/main.dart';

void main() {
  group('App', () {
    testWidgets('renders OrderScreen as home', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(OrderScreen), findsOneWidget);
    });
  });

  group('OrderScreen - Basic UI', () {
    testWidgets('shows app title', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.text('Sandwich Counter'), findsOneWidget);
    });

    testWidgets('shows Add to Cart button', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.text('Add to Cart'), findsOneWidget);
    });

    testWidgets('shows initial cart summary', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.textContaining('Items: 0'), findsOneWidget);
      expect(find.textContaining('Total: £0.00'), findsOneWidget);
    });
  });

  group('OrderScreen - Add to cart', () {
    testWidgets('adds item and updates cart summary',
        (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      await tester.tap(find.text('Add to Cart'));
      await tester.pumpAndSettle(); // ✅ IMPORTANT

      expect(find.textContaining('Items: 1'), findsOneWidget);
      expect(find.textContaining('Total:'), findsOneWidget);
    });

    testWidgets('shows SnackBar on add', (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      await tester.tap(find.text('Add to Cart'));
      await tester.pump(); 
      await tester.pumpAndSettle(); // ✅ IMPORTANT

      expect(find.textContaining('Added'), findsOneWidget);
    });
  });

  group('OrderScreen - Quantity buttons', () {
    testWidgets('increase and decrease quantity',
        (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      // Initial quantity = 1
      expect(find.text('1'), findsOneWidget);

      // Tap +
      await tester.tap(find.byKey(const Key('increase_button')));
      await tester.pump();
      expect(find.text('2'), findsOneWidget);

      // Tap -
      await tester.tap(find.byKey(const Key('decrease_button')));
      await tester.pump();
      expect(find.text('1'), findsOneWidget);
    });
  });
}
