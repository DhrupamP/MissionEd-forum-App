import 'package:flutter/material.dart';
import 'package:missioned_forum/components/my_app_bar.dart';
import 'package:missioned_forum/components/my_drawer.dart';
import 'package:missioned_forum/components/recommended_card.dart';

var btnindex = 0;
bool pressed = false;

class NetworkPage extends StatefulWidget {
  const NetworkPage({Key? key}) : super(key: key);

  @override
  _NetworkPageState createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  List<bool> isSelected = [];

  List<Widget> bodyElements = [
    Text('No One is Following you!'),
    Container(
        child: Text(
      'your are not following anyone!',
    )),
    Column(
      children: [
        RecommenderCard(name: 'dhrupam', email: 'hello#sanon'),
        RecommenderCard(name: 'dhrupam', email: 'dhrupam#sanon'),
        RecommenderCard(name: 'dhrupam', email: 'dhrupam#sanon'),
        RecommenderCard(name: 'dhrupam', email: 'dhrupam#sanon'),
        RecommenderCard(name: 'dhrupam', email: 'dhrupam#sanon'),
        RecommenderCard(name: 'dhrupam', email: 'hello'),
      ],
    )

    // Container(
    //   margin: EdgeInsets.all(20),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(20),
    //     gradient: LinearGradient(
    //       begin: Alignment(0.9, 0.0),
    //       end: Alignment.topLeft,
    //       colors: [Color(0xFF7A7A9B), Color(0x77858592)],
    //     ),
    //   ),
    //   child: Column(
    //     children: [
    //       RecommenderCard(
    //         email: 'dhrupam@patel.com',
    //         name: 'Dhrupam Patel',
    //       ),
    //       RecommenderCard(
    //         email: 'dhrupam@patel.com',
    //         name: 'Dhrupam Patel',
    //       ),
    //     ],
    //   ),
    // )
  ];
  @override
  void initState() {
    // TODO: implement initState
    isSelected = [true, false, false];
    btnindex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4FF),
      appBar: MyAppBar(),
      endDrawer: MyDrawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Align(
              alignment: Alignment.topCenter,
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: ToggleButtons(
                  children: <Widget>[
                    // first toggle button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Followers',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    // second toggle button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Following',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    // third toggle button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Recommended',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                        btnindex = index;
                      }
                    });
                  },
                  isSelected: isSelected,
                  selectedColor: Colors.white,
                  fillColor: Color(0xff444753),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: bodyElements.elementAt(btnindex),
            ),
          )
        ],
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// ElevatedButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all(
// pressed ? Colors.black : Colors.black)),
// onPressed: () {
// setState(() {
// pressed = !pressed;
// btnindex = 0;
// });
// },
// child: Text(
// 'Followers',
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// Container(
// child: ElevatedButton(
// style: ButtonStyle(
// backgroundColor:
// MaterialStateProperty.all(Colors.black)),
// onPressed: () {
// setState(() {
// pressed = !pressed;
// btnindex = 1;
// });
// },
// child: Container(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// 'Following',
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// ),
// ),
// ElevatedButton(
// style: ButtonStyle(
// backgroundColor:
// MaterialStateProperty.all(Colors.black),
// ),
// onPressed: () {
// setState(() {
// pressed = !pressed;
// btnindex = 2;
// });
// },
// child: Container(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// 'Recommended',
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// ),
// ],
// )
