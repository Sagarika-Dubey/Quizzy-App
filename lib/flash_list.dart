import 'package:flutter/material.dart';

class FlashList extends StatelessWidget {
  FlashList({required this.flashcard});
  final List<String> flashcard;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: flashcard.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                flashcard[index],
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        });
  }
}
