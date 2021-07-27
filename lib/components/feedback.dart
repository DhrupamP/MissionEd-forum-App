import 'package:flutter/material.dart';
import 'package:missioned_forum/components/ratingbar.dart';

class FeedBackForm extends StatelessWidget {
  const FeedBackForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Feedback',
                style: TextStyle(fontSize: 20),
              ),
            ),
            // SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                hintText: 'What did you like the most?',
              ),
            ),
            // SizedBox(
            //   height: 25,
            // ),
            TextField(
              decoration: InputDecoration(
                hintText: 'What did you not like the most?',
              ),
            ),
            RatingBar(),
            TextField(
              decoration: InputDecoration(
                hintText: 'Describe Your Experience',
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xFF3F51B5))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
