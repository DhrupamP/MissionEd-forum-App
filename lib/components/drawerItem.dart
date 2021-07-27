import 'package:flutter/material.dart';
import 'package:missioned_forum/screens/home_page..dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      required this.itemIcon,
      this.itemText = '',
      required this.itemRoute})
      : super(key: key);

  final IconData itemIcon;
  final String itemText;
  final String itemRoute;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, itemRoute);
      },

      child: Container(
        padding: EdgeInsets.only(top: 15, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                itemIcon,
                size: 25,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              itemText,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
