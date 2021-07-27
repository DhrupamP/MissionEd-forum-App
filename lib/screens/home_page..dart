import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:missioned_forum/components/carousel.dart';
import 'package:missioned_forum/components/drawerItem.dart';
import 'package:missioned_forum/components/post_item.dart';
import 'package:missioned_forum/components/feedback.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return FeedBackForm();
            },
          );
        },
        child: Icon(Icons.feedback),
        backgroundColor: Color(0xff3f51b5),
      ),
      endDrawer: Drawer(
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
              itemRoute: '/homepage',
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.lightBlue.shade50,
          height: double.infinity,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                height: 70.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 0, blurRadius: 5)
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Image.asset('assets/images/MIssionEdLogo.jpg'),
                        radius: 33,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 10, right: 80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text(
                          'Create Post....',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Carousel(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 0, blurRadius: 5)
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Posts',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 5,
                        color: Color(0xff7C7E7F),
                      ),
                      PostItem(),
                      PostItem(),
                      PostItem(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
