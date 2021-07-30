import 'package:flutter/material.dart';
import 'package:missioned_forum/components/drawerItem.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: _closeEndDrawer,
              ),
            ),
          ),
          Divider(
            height: 2,
            thickness: 2,
          ),
          DrawerItem(
            itemIcon: Icons.home,
            itemText: 'Home',
            itemRoute: '/homepage',
          ),
          DrawerItem(
            itemIcon: Icons.people_alt,
            itemText: 'Network',
            itemRoute: '/networkpage',
          ),
        ],
      ),
    );
  }
}
