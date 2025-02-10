import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteGalleryPage extends StatelessWidget {
  final SuiteModel suite;
  const SuiteGalleryPage({super.key, required this.suite});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(suite.nome?.decode() ?? ''),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              appNavigatorKey.currentState!.pop();
            },
            icon: const Icon(Icons.keyboard_arrow_down)),
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: ListView.builder(
          itemCount: (suite.fotos!.length / 2).ceil(),
          itemBuilder: (context, index) {
            bool isOddRow = index % 2 == 0;
            List<String> imageUrls = suite.fotos!;
            if (isOddRow) {
              return buildImage(context, imageUrls[index], isOddRow);
            } else {
              return Row(
                children: [
                  Expanded(
                    child: buildImage(context, imageUrls[index * 2 - 1], isOddRow),
                  ),
                  Expanded(
                    child: buildImage(context, imageUrls[index * 2], isOddRow),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Widget buildImage(BuildContext context, String imageUrl, bool isOddRow) {
    return Container(
      decoration: BoxDecoration(
        border: isOddRow
            ? Border.symmetric(vertical: BorderSide(color: Colors.white, width: 4.0))
            : Border.all(color: Colors.white, width: 4.0),
      ),
      child: Image.network(
        imageUrl,
        width: isOddRow ? context.screenSize.width : context.screenSize.width / 2,
        height: 150,
        fit: BoxFit.fill,
      ),
    );
  }
}
