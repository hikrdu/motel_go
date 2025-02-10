import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class PageAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const PageAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.primaryColor,
      scrolledUnderElevation: 0,
      bottom: PreferredSize(preferredSize: Size.fromHeight(5), child: SizedBox.shrink()),
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Icon(Icons.sort, color: Colors.white),
      ),
      centerTitle: true,
      title: Chip(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.flash_on,
              color: Colors.red,
            ),
            Text(
              'ir agora', // TODO: Check translations
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            // TODO: Navigate to search screen
          },
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
