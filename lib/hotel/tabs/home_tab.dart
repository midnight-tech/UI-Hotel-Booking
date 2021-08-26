import 'package:flutter/material.dart';
import 'package:hotel_booking/hotel/pages/detail.dart';
import 'package:hotel_booking/hotel/widgets/card_hotel.dart';
import 'package:hotel_booking/hotel/widgets/custom_activated_button.dart';
import 'package:hotel_booking/hotel/widgets/custom_header.dart';
import 'package:hotel_booking/hotel/widgets/custom_recommendation.dart';
import 'package:hotel_booking/hotel/widgets/custom_search.dart';
import 'package:hotel_booking/hotel/widgets/custom_title.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2C),
      body: SingleChildScrollView(
        primary: true,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(),
              CustomSearch(hintText: 'Search hotel, appartement'),
              CustomTitle(
                title: 'Category',
                padding: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustonActivatedButton(
                        title: "Hotel",
                        isPrimary: true,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: CustonActivatedButton(
                        title: "Flight",
                        isPrimary: false,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: CustonActivatedButton(
                        title: "Train",
                        isPrimary: false,
                      ),
                    ),
                  ],
                ),
              ),
              CustomTitle(
                title: 'Featured Hotel',
                padding: true,
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: size.width * 0.53,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(),
                          ),
                        );
                      },
                      child: CardHotel(
                        index: index,
                        urlImage: 'https://picsum.photos/300/250',
                        title: 'Hotel Surya',
                        price: 800,
                      ),
                    );
                  },
                ),
              ),
              CustomTitle(
                title: 'Recommendation Hotel',
                padding: true,
              ),
              CustomRecommendation(
                url: 'https://picsum.photos/300/250',
                title: 'Hotel Wildan Wari',
                price: 800,
              )
            ],
          ),
        ),
      ),
    );
  }
}
