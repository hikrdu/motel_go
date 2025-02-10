import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

abstract class SuiteUtils {
  static double serviceTaxCalculator(double value) {
    const serviceTaxRate = 0.053;
    return value * serviceTaxRate;
  }

  static double totalReservation(PeriodModel period) {
    final value = period.valor ?? 0;
    final discount = period.desconto?.desconto ?? 0;
    return value + serviceTaxCalculator(value) - discount;
  }

  static double paymentCalculator(PeriodModel period, int step) {
    final value = period.valor ?? 0;
    final total = totalReservation(period);
    final now = serviceTaxCalculator(value) + (period.desconto == null ? value * 0.1 : 0);
    return step == 1 ? now : total - now;
  }

  static Widget buildItem(String title, Widget icon, {String? subtitle, Widget? trailing, Color? borderColor}) {
    return Container(
      decoration: BoxDecoration(
        border: borderColor != null
            ? Border(
                top: BorderSide(color: borderColor),
                bottom: BorderSide(color: borderColor),
              )
            : null,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        color: Colors.white,
        child: ListTile(
          title: Text(title),
          subtitle: subtitle != null ? Text(subtitle) : null,
          leading: icon,
          trailing: trailing,
        ),
      ),
    );
  }
}
