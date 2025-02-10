import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuitePeriodWidget extends StatelessWidget {
  final PeriodModel? period;
  final Function onPeriodSelected;
  const SuitePeriodWidget({
    super.key,
    required this.period,
    required this.onPeriodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              period?.tempoFormatado ?? '',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            if (period?.desconto != null)
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SuiteDiscountBadgeWidget(period: period!),
              )
          ],
        ),
        subtitle: buildSubtitle(),
        trailing: Icon(Icons.navigate_next),
        onTap: () => onPeriodSelected(),
      ),
    );
  }

  Widget buildSubtitle() {
    if (period?.desconto != null) {
      return Row(
        children: [
          Text(
            AppFormater.currencyFormat(period?.valor),
            style: TextStyle(fontSize: 24, color: Colors.grey, decoration: TextDecoration.lineThrough),
          ),
          SizedBox(width: 16),
          Text(AppFormater.currencyFormat(period?.valorTotal),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      );
    } else {
      return Row(
        children: [
          Text(AppFormater.currencyFormat(period?.valorTotal),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      );
    }
  }
}
