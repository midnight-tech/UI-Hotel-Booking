import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
      decoration: BoxDecoration(
        color: Color(0xFF2e2c36),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: TextField(
        style: TextStyle(
          color: Color(0xFF78787a),
          fontSize: 14,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 25,
          ),
          border: InputBorder.none,
          hintText: this.hintText,
          hintStyle: TextStyle(
            color: Color(0xFF78787a),
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
