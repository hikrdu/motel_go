import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuiteReservationPage extends StatelessWidget {
  final SuiteModel suite;
  final PeriodModel period;
  final MotelModel? motel;
  const SuiteReservationPage({
    super.key,
    required this.suite,
    required this.period,
    this.motel,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SuiteImageCarouselWidget(suite: suite),
            SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              child: MotelInfoWidget(
                motel: motel,
                showMoreInfo: true,
                onTap: () {},
              ),
            ),
            // TODO: Implement Reservation Details

            // TODO: Implement Reservation More Info

            // TODO: Implement Policy
          ],
        ),
      ),
      // TODO: Implement Bottom Navigation Bar
    );
  }
}
