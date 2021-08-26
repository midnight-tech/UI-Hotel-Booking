import 'package:flutter/material.dart';

class CustomHeaderHotel extends StatelessWidget {
  const CustomHeaderHotel({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            this.title,
            style: TextStyle(
              color: Color(0xFFfefefe),
              fontSize: 25,
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      '\$800',
                      style: TextStyle(
                        color: Color(0xFFfefefe),
                        fontSize: 16,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'per night',
                    style: TextStyle(
                      color: Color(0xFFdddddd),
                      fontSize: 14,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.star,
                      color: Color(0xFFffba4f),
                    ),
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(
                      color: Color(0xFFfefefe),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
