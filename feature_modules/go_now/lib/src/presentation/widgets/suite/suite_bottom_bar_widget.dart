import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteBottomBarWidget extends StatelessWidget {
  final PeriodModel period;
  const SuiteBottomBarWidget({super.key, required this.period});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(10), left: Radius.circular(10)),
          color: Colors.teal,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                'forma de pagamento', // TODO: Check translations
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'escolher pagamento', // TODO: Check translations
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'pagar agora', // TODO: Check translations
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      AppFormater.currencyFormat(SuiteUtils.paymentCalculator(period, 1)),
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: context.screenSize.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightGreen,
              ),
              child: TextButton.icon(
                onPressed: () {},
                label: Text(
                  'RESERVAR PARA IR AGORA', // TODO: Check translations
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                icon: Icon(
                  Icons.verified_user,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
