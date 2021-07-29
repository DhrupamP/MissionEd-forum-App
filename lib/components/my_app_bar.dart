import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff444753),
      bottomOpacity: 10,
      elevation: 10,
      leading: CircleAvatar(
        child: Image.asset('assets/images/MIssionEdLogo.jpg'),
        backgroundColor: Colors.black45,
      ),
      title: Text(
        'MissionEd Forum',
        style: TextStyle(color: Colors.deepOrangeAccent),
      ),
      actions: [
        Builder(
          builder: (context) =>
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ),
        Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.list),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
