import 'package:flutter/material.dart';

class RecommenderCard extends StatelessWidget {
  const RecommenderCard({Key? key, required this.name, required this.email})
      : super(key: key);

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment(0.9, 0.0),
            end: Alignment.topLeft,
            colors: [Color(0xFF7A7A9B), Color(0x77858592)],
          ),
        ),
        child: Container(
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(55),
                    child: Image.asset('assets/images/MIssionEdLogo.jpg')),
                radius: 55,
              ),
              Container(
                height: 150,
                padding: EdgeInsets.only(top: 20, left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'email',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'name',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
