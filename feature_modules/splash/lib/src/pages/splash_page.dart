import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('splash_page_scaffold'),
      body: SizedBox(
        width: context.screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
              child: ClipOval(
                child: SizedBox.expand(
                  child: Image.asset(
                    AppConstants.kLogoPath,
                    key: Key('logo_key'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
