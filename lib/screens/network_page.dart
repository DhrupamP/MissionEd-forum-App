import 'package:flutter/material.dart';
import 'package:missioned_forum/components/my_app_bar.dart';
import 'package:missioned_forum/components/my_drawer.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({Key? key}) : super(key: key);

  @override
  _NetworkPageState createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      endDrawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Align(
          alignment: Alignment.topCenter,
          child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Followers',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            pressed ? Colors.black : Colors.white),
                      ),
                      onPressed: () {
                        setState(() => pressed = !pressed);
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
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Recommended',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
