import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteMainImageWidget extends StatelessWidget {
  final SuiteModel? suite;
  final Function? onTap;
  const SuiteMainImageWidget({super.key, this.suite, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => onTap != null ? onTap!() : null,
            child: Container(
              width: double.infinity,
              height: 220,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  suite?.fotos?.first ?? '',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(Icons.error),
                    );
                  },
                ),
              ),
            ),
          ),
          SuiteNameWidget(
            suite: suite,
          )
        ],
      ),
    );
  }
}
