import 'package:flutter/material.dart';

class CustonActivatedButton extends StatelessWidget {
  const CustonActivatedButton({
    Key? key,
    required this.title,
    this.isPrimary = false,
  }) : super(key: key);

  final String title;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        this.title,
        style: TextStyle(
          letterSpacing: 1.2,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: this.isPrimary ? Color(0xFFffba4f) : Color(0xFF696969),
        padding: EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
