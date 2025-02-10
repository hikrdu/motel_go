import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteItemsPage extends StatelessWidget {
  final SuiteModel suite;
  const SuiteItemsPage({
    super.key,
    required this.suite,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              appNavigatorKey.currentState!.pop();
            },
            icon: const Icon(Icons.keyboard_arrow_down)),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                suite.nome?.decode() ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              ),
            ),
            buildTextWithLines('Principais itens'), // TODO: Check translations
            buildCategoryItems(suite.categoriaItens!),
            buildTextWithLines('tem também'), // TODO: Check translations
            buildItems(suite.itens!),
          ],
        ),
      ),
    );
  }

  Widget buildTextWithLines(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text.toLowerCase(),
              style: TextStyle(fontSize: 32, color: Colors.grey),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryItems(List<CategoryItemModel> items) {
    return Wrap(
      spacing: 24.0,
      children: items.map((category) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              category.icone ?? '',
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                category.nome?.decode() ?? '',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        );
      }).toList(),
    );
  }

  Widget buildItems(List<ItemModel> items) {
    return items.isNotEmpty
        ? Text(
            items.map((item) => item.nome?.decode() ?? '').join(', '),
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 24, height: 1.8),
          )
        : SizedBox.shrink();
  }
}
