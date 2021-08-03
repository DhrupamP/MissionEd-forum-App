import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:missioned_forum/components/my_app_bar.dart';
import 'package:missioned_forum/components/my_drawer.dart';

class RecommendedProfile extends StatefulWidget {
  @override
  _RecommendedProfileState createState() => _RecommendedProfileState();
}

class _RecommendedProfileState extends State<RecommendedProfile> {
  bool pressed = false;
  String btntxt = 'Follow';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      endDrawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                children: [
                  Container(
                    height: (MediaQuery.of(context).size.height) * 0.5,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFF2F2F2),
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height) * 0.25,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFFF471A),
                  ),
                  Positioned(
                    top: (MediaQuery.of(context).size.height) * 0.10,
                    right: MediaQuery.of(context).size.width * 0.18,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(blurRadius: 10),
                            ],
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/MIssionEdLogo.jpg',
                              scale: 6,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Dhrupam Patel',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'pdhrupam@gmail.com',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.location_on_rounded),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Followers',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    Text(
                      '00',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFF471A)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            if (pressed == true) {
                              btntxt = 'Following';
                            } else {
                              btntxt = 'Follow';
                            }
                            pressed = !pressed;
                          },
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFFF471A),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text(btntxt), Icon(Icons.person_add)],
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Following',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    Text(
                      '00',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFF471A)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/recommendedprofile');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFFF471A),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text('Message'), Icon(Icons.message)],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recent Activity',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            Divider(
              thickness: 3,
              color: Color(0xFF7C7E7F),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'No Activity',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF66B905),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FollowCard extends StatelessWidget {
  const FollowCard(
      {Key? key,
      this.followtxt = '',
      this.btntxt = '',
      required this.btnicon,
      required this.routeformessage})
      : super(key: key);

  final String followtxt;
  final String btntxt;
  final String routeformessage;
  final IconData btnicon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(
            followtxt,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        Text(
          '00',
          style: TextStyle(fontSize: 20, color: Color(0xFFFF471A)),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, routeformessage);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xFFFF471A),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text(btntxt), Icon(btnicon)],
          ),
        )
      ],
    );
  }
}
