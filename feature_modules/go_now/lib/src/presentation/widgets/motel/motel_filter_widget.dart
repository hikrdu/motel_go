import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class MotelFilterWidget extends StatelessWidget {
  const MotelFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> displayFilters = AppConstants.motelFilters.map((filter) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Chip(
          label: Text(filter),
        ),
      );
    }).toList();
    displayFilters.insert(
        0,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Chip(
              label: Row(
            children: [
              Icon(
                Icons.tune,
                size: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text('filtros'),
              ),
            ],
          )),
        ));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: displayFilters,
      ),
    );
  }
}
