import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteNameWidget extends StatelessWidget {
  final SuiteModel? suite;
  const SuiteNameWidget({super.key, this.suite});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${suite?.nome?.decode()}',
            style: TextStyle(fontSize: 22, overflow: TextOverflow.ellipsis),
            maxLines: 2,
          ),
        ),
        if (suite?.exibirQtdDisponiveis ?? false)
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Symbols.e911_emergency,
                  color: Colors.red,
                ),
                Text(
                  'só mais ${suite?.qtd} pelo app', // TODO: Check translations
                  style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
      ],
    );
  }
}
