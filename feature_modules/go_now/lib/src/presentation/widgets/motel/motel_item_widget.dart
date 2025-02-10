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
        // TODO: Implement Suite List
      ],
    );
  }
}
