import 'package:flutter/material.dart';

class CustomRecommendation extends StatelessWidget {
  const CustomRecommendation({
    Key? key,
    required this.url,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String url;
  final String title;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      height: 110,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(0xFF262837),
        margin: EdgeInsets.zero,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    this.url,
                    // "https://picsum.photos/300/250",
                    height: 400,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.title,
                        // "Hotel Wildan Wari",
                        style: TextStyle(
                          color: Color(0xFFfefefe),
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '\$${this.price}',
                        style: TextStyle(
                          color: Color(0xFF8de0a0),
                          letterSpacing: 1.2,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.bookmark,
                color: Color(0xFFfefefe),
              )
            ],
          ),
        ),
      ),
    );
  }
}
