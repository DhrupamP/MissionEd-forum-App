import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  'Webinar Opportunity on Automotive Product Design to Mechanical Engineering  Students',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff636363)),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'General',
                  style: TextStyle(color: Color(0xff5CB905)),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text('0'),
                    Text('Likes'),
                  ],
                ),
              ),
              Expanded(flex: 1, child: Text('5m')),
            ],
          ),
          Divider(
            color: Color(0xffBCBCBC),
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
