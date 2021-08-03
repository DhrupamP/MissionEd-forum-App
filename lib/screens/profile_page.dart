import 'package:flutter/material.dart';
import 'package:missioned_forum/components/my_app_bar.dart';
import 'package:missioned_forum/components/my_drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      endDrawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/MIssionEdLogo.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dhrupam Patel',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Your Personal Account',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
