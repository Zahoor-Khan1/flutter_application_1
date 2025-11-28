class PricingRepository {
  final double sixInchPrice;
  final double footlongPrice;

  PricingRepository({
    this.sixInchPrice = 7.0,
    this.footlongPrice = 11.0,
  });

  double calculateTotal({
    required int quantity,
    required bool isFootlong,
  }) {
    return isFootlong
        ? quantity * footlongPrice
        : quantity * sixInchPrice;
  }
}
