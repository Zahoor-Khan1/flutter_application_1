import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:sandwich_shop/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'Happy path: user can add an item to the cart',
    (WidgetTester tester) async {
      // Launch the full app
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      // Scroll down to reveal the Add to Cart button
      await tester.drag(
        find.byType(Scrollable),
        const Offset(0, -500),
      );
      await tester.pumpAndSettle();

      // Tap Add to Cart
      await tester.tap(
        find.text('Add to Cart'),
        warnIfMissed: false,
      );
      await tester.pumpAndSettle();

      // Verify cart updates
      expect(find.textContaining('Items:'), findsOneWidget);
    },
  );
}
