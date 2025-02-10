import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class SuiteCategoryWidget extends StatelessWidget {
  final List<CategoryItemModel>? categories;
  final Function onTap;
  const SuiteCategoryWidget({
    super.key,
    required this.categories,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget>? displayItems = categories?.take(5).map((category) => buildCategoryItems(category.icone!)).toList();

    displayItems?.add(showMore());

    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: (categories != null && categories!.isNotEmpty) ? displayItems! : []),
      ),
    );
  }

  Widget buildCategoryItems(String url) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Image.network(
        url,
        height: 45,
        width: 45,
      ),
    );
  }

  Widget showMore() {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Text(
            'ver todos', // TODO: Check translations
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          size: 16,
        )
      ],
    );
  }
}
