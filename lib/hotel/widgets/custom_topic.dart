import 'package:flutter/material.dart';

class CustomTopic extends StatelessWidget {
  const CustomTopic({Key? key, required this.topic}) : super(key: key);

  final String topic;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.circle,
              color: Color(0xFFffba4f),
              size: 15,
            ),
          ),
          Text(
            this.topic,
            style: TextStyle(
              color: Color(0xFFdddddd),
              letterSpacing: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
