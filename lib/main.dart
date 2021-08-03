// @dart=2.9

import 'package:flutter/material.dart';
import 'package:missioned_forum/components/carousel.dart';
import 'package:missioned_forum/screens/messages_page.dart';
import 'package:missioned_forum/screens/network_page.dart';
import 'package:missioned_forum/screens/profile_page.dart';
import 'screens/recomended_profile.dart';
import 'screens/home_page..dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/networkpage': (context) => NetworkPage(),
        '/messagespage': (context) => MessagesPage(),
        '/recommendedprofile': (context) => RecommendedProfile(),
        '/profilepage': (context) => ProfilePage(),
      },
    );
  }
}
