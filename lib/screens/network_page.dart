import 'package:flutter/material.dart';
import 'package:missioned_forum/components/my_app_bar.dart';
import 'package:missioned_forum/components/my_drawer.dart';

var btnindex = 0;
bool pressed = false;

class NetworkPage extends StatefulWidget {
  const NetworkPage({Key? key}) : super(key: key);

  @override
  _NetworkPageState createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  bool pressed = false;

  List<Widget> bodyElements = [
    Text('No One is Followinf you!'),
    Text('your are not following anyone!'),
    Container(
      color: Colors.red,
      height: 100,
      width: double.infinity,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      endDrawer: MyDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Align(
              alignment: Alignment.topCenter,
              child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  pressed ? Colors.black : Colors.black)),
                          onPressed: () {
                            setState(() {
                              pressed = !pressed;
                              btnindex = 0;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Followers',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  pressed ? Colors.black : Colors.black)),
                          onPressed: () {
                            setState(() {
                              pressed = !pressed;
                              btnindex = 1;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Following',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  pressed ? Colors.black : Colors.black)),
                          onPressed: () {
                            setState(() {
                              pressed = !pressed;
                              btnindex = 2;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Recommended',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            child: bodyElements.elementAt(btnindex),
          )
        ],
      ),
    );
  }
}
