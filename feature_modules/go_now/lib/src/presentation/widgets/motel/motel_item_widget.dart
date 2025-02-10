import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class MotelItemWidget extends StatelessWidget {
  final MotelModel? motel;

  const MotelItemWidget({super.key, required this.motel});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: Key('motel_content'),
      children: [
        MotelFilterWidget(),
        Divider(height: 2),
        MotelInfoWidget(motel: motel),
        SizedBox(
          height: context.screenSize.height * 0.8,
          child: PageView.builder(
            itemCount: motel?.suites?.length ?? 0,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final suite = motel?.suites?[index];
              return SuiteWidget(
                suite: suite,
                motel: motel,
              );
            },
          ),
        ),
      ],
    );
  }
}
