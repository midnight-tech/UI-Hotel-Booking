import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
    required this.title,
    required this.padding,
  }) : super(key: key);

  final String title;
  final bool padding;
  final double size = 30;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.padding
          ? EdgeInsets.only(left: this.size, right: this.size, top: this.size)
          : EdgeInsets.only(left: 0, right: 0, top: this.size),
      child: Text(
        this.title,
        style: TextStyle(
          color: Color(0xFFfefefe),
          fontSize: 15,
          letterSpacing: 1.2,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
