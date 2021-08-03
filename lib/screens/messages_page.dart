import 'package:flutter/material.dart';
import 'package:missioned_forum/components/my_app_bar.dart';
import 'package:missioned_forum/components/my_drawer.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  double elevation = 0;
  bool txtfieldfocus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      endDrawer: MyDrawer(),
      body: GestureDetector(
        onTap: () {
          setState(() {
            FocusScope.of(context).unfocus();
          });
        },
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: (MediaQuery.of(context).size.height) * 0.05,
                    width: (MediaQuery.of(context).size.width) * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          (MediaQuery.of(context).size.height) * 0.5),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(
                          (MediaQuery.of(context).size.height) * 0.5),
                      elevation: elevation,
                      child: TextField(
                        cursorColor: Color(0xFFE8E8E8),
                        onTap: () {
                          setState(() {
                            elevation = 5;
                          });
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            prefixIcon: Container(
                              height:
                                  (MediaQuery.of(context).size.height) * 0.05,
                              width:
                                  (MediaQuery.of(context).size.height) * 0.05,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                      (MediaQuery.of(context).size.height) *
                                          0.025),
                                  topRight: Radius.circular(
                                      (MediaQuery.of(context).size.height) *
                                          0.025),
                                  bottomLeft: Radius.circular(
                                      (MediaQuery.of(context).size.height) *
                                          0.025),
                                ),
                              ),
                              child: Icon(
                                Icons.search,
                                size:
                                    (MediaQuery.of(context).size.height) * 0.03,
                                color: Colors.white,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  (MediaQuery.of(context).size.height) * 0.025),
                            ),
                            hintText: 'Search...'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(50),
                width: (MediaQuery.of(context).size.width) * 0.8,
                child: Center(
                    child: Text(
                  'No Chats',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/networkpage');
                },
                child: Text('START NOW'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff7dec0d))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
