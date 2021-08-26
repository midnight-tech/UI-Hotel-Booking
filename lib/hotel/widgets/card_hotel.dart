import 'package:flutter/material.dart';

class CardHotel extends StatelessWidget {
  const CardHotel({
    Key? key,
    required this.index,
    required this.urlImage,
    required this.title,
    required this.price,
  }) : super(key: key);

  final int index;
  final String urlImage;
  final String title;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: index == 0 ? 30 : 0,
        right: index == 5 ? 30 : 0,
      ),
      width: size.width * 0.50,
      height: size.width * 0.53,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.zero,
        color: Color(0xFF262837),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    this.urlImage,
                    // "https://picsum.photos/300/250",
                    height: 300,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            this.title,
                            style: TextStyle(
                              color: Color(0xFFfefefe),
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "\$${this.price}",
                            style: TextStyle(
                              color: Color(0xFF8de0a0),
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.bookmark,
                      color: Color(0xFFfefefe),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
