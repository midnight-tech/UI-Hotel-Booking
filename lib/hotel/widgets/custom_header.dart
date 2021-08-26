import 'package:flutter/material.dart';

class CustomHeader extends StatefulWidget {
  CustomHeader({Key? key}) : super(key: key);

  @override
  _CustomHeaderState createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Welcome back,\nOnky",
            style: TextStyle(
              color: Color(0xFFfefefe),
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 1.2,
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Color(0xFFfefefe),
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
