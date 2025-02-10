import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteReservationDetailsWidget extends StatelessWidget {
  final PeriodModel period;
  const SuiteReservationDetailsWidget({super.key, required this.period});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'início do período', // TODO: Check translations
                  ),
                  Text(
                    'IMEDIATO', // TODO: Check translations
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                  ),
                ],
              ),
              Icon(Icons.arrow_right_alt, size: 42),
              Column(
                children: [
                  Text(
                    'período', // TODO: Check translations
                  ),
                  Text('${period.tempoFormatado}', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24)),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Suite value
                    buildSummaryItem(
                        label: Text(
                          'valor da suíte', // TODO: Check translations
                          style: TextStyle(fontSize: 18),
                        ),
                        value: period.valor!),
                    Divider(indent: 16, endIndent: 16),
                    // Discount
                    if (period.desconto != null)
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          buildSummaryItem(
                            label: SuiteDiscountBadgeWidget(period: period),
                            value: period.desconto!.desconto! * -1,
                            fontWeight: FontWeight.bold,
                            discount: true,
                          ),
                          Divider(indent: 16, endIndent: 16)
                        ],
                      ),
                    // Service tax
                    buildSummaryItem(
                        label: Text(
                          'taxa de serviço', // TODO: Check translations
                          style: TextStyle(fontSize: 18),
                        ),
                        value: SuiteUtils.serviceTaxCalculator(period.valor!)),
                    Divider(indent: 16, endIndent: 16),
                    // Total reservation
                    buildSummaryItem(
                      label: Text(
                        'valor total da reserva', // TODO: Check translations
                        style: TextStyle(fontSize: 18),
                      ),
                      value: SuiteUtils.totalReservation(period),
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 24.0),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.teal,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: [
                              buildPaymentItem(
                                position: '1',
                                label: 'pague agora para reservar', // TODO: Check translations
                                value: SuiteUtils.paymentCalculator(period, 1),
                              ),
                              Divider(
                                indent: 16,
                                endIndent: 16,
                                thickness: 3,
                              ),
                              buildPaymentItem(
                                position: '2',
                                label: 'pague o restante no motel', // TODO: Check translations
                                value: SuiteUtils.paymentCalculator(period, 2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildSummaryItem(
      {required Widget label, required double value, bool discount = false, FontWeight? fontWeight}) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          label,
          Text(
            AppFormater.currencyFormat(value),
            style: TextStyle(
              fontSize: 18,
              fontWeight: fontWeight,
              color: discount ? Colors.cyan : null,
            ),
          )
        ],
      ),
      subtitle: discount
          ? Text(
              'não cumulativo com demais promoções ou cortesias', // TODO: Check translations
            )
          : null,
    );
  }

  ListTile buildPaymentItem({required String position, required String label, required double value}) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(3.0)),
                child: Text(
                  position,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(label),
              ),
            ],
          ),
          Text(
            AppFormater.currencyFormat(value),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
