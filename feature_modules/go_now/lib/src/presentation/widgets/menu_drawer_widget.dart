import 'package:feature_module_base/feature_module_base.dart';
import 'package:flutter/material.dart';

class MenuDrawerWidget extends StatelessWidget {
  const MenuDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: Key('menu_drawer_key'),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.redAccent,
                  context.theme.primaryColor,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: Colors.white,
                          size: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'go fidelidade',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 16, top: 8.0),
                      child: Text(
                        'acumule selinhos e troque por reservas grátis. vale em todos os motéis e horários!', // TODO: Check translations
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Symbols.expand_circle_right,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ],
            ),
          ),
          // TODO: Check translations
          buildItem('login', Symbols.account_circle),
          buildItem('ajuda', Symbols.support),
          buildItem('configurações', Icons.settings),
          buildItem('comunicar problema', Symbols.pest_control),
          buildItem('tem um motel? faça parte', Icons.campaign_outlined),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('versao: 2.0.087'),
          )
        ],
      ),
    );
  }

  Widget buildItem(String text, IconData iconData) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      margin: EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        leading: Icon(iconData),
        trailing: Icon(
          Icons.navigate_next,
          color: Colors.black45,
        ),
        title: Text(text),
        onTap: () {
          // Navigate to next screen
        },
      ),
    );
  }
}
