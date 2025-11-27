class PricingRepository {
  final double sixInchPrice = 7.0;
  final double footlongPrice = 11.0;

  double calculateTotal({
    required int quantity,
    required bool isFootlong,
  }) {
    if (quantity <= 0) return 0.0;

    final pricePerSandwich = isFootlong ? footlongPrice : sixInchPrice;
    return quantity * pricePerSandwich;
  }
}
