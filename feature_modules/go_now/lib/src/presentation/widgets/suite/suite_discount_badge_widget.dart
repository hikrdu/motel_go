import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteDiscountBadgeWidget extends StatelessWidget {
  final PeriodModel period;
  const SuiteDiscountBadgeWidget({super.key, required this.period});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.cyan,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        '${discountCalculator(period.valor, period.desconto?.desconto).round()}% off', // TODO: Check translations
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.cyan,
        ),
      ),
    );
  }

  double discountCalculator(double? value, double? discount) {
    if (value == null || discount == null) {
      return 0;
    }
    return (discount / value) * 100;
  }
}
