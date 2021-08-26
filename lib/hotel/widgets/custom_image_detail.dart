import 'package:flutter/material.dart';

class CustomImageDetil extends StatelessWidget {
  const CustomImageDetil({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.only(left: 30, right: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          this.image,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
