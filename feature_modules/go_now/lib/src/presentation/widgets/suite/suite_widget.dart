import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteWidget extends StatelessWidget {
  final SuiteModel? suite;
  const SuiteWidget({
    super.key,
    required this.suite,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenSize.width * 0.9,
      child: Column(
        children: [
          SuiteMainImageWidget(
            suite: suite,
            onTap: () {
              // TODO: Navigate to Suite Gallery
            },
          ),
          Card(
            child: SuiteCategoryWidget(
              categories: suite?.categoriaItens,
              onTap: () {
                // TODO: Navigate to Suite Item Page
              },
            ),
          ),
          ...List.generate(
            suite?.periodos?.length ?? 0,
            (index) {
              final PeriodModel? period = suite?.periodos?[index];
              return SuitePeriodWidget(
                period: period,
                onPeriodSelected: () {
                  // TODO: Navigate to Suite Reservation
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
