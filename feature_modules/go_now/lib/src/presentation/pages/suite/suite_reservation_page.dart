import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

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
            SizedBox(height: 8.0),
            SuiteReservationDetailsWidget(period: period),
            SizedBox(height: 8.0),
            SuiteReservationMoreWidget(),
            SuiteReservationPolicyWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: BlocProvider(
                    create: (_) => ReservationBloc(),
                    child: BlocBuilder<ReservationBloc, ReservationState>(builder: (context, state) {
                      bool value = state is ReservationChangedState ? state.privacyChecked : false;
                      return Checkbox(
                        value: value,
                        onChanged: (_) {
                          context.read<ReservationBloc>().changePrivacy(value);
                        },
                        activeColor: context.theme.primaryColor,
                      );
                    }),
                  ),
                  title: Text('estou ciente e de acordo com a política de reserva.'), // TODO: Check translations
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SuiteBottomBarWidget(period: period),
    );
  }
}
