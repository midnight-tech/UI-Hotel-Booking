import 'package:flutter/material.dart';

class CustomTopNavigation extends StatelessWidget {
  const CustomTopNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color(0xFFffba4f),
                  ),
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Color(0xFFfefefe),
                      fontSize: 16,
                      letterSpacing: 1.2),
                )
              ],
            ),
          ),
          Container(
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Color(0xFFfefefe),
              ),
            ),
          )
        ],
      ),
    );
  }
}
