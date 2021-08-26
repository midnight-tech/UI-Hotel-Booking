import 'package:flutter/material.dart';
import 'package:hotel_booking/hotel/widgets/custom_about.dart';
import 'package:hotel_booking/hotel/widgets/custom_heder_hotel.dart';
import 'package:hotel_booking/hotel/widgets/custom_image_detail.dart';
import 'package:hotel_booking/hotel/widgets/custom_title.dart';
import 'package:hotel_booking/hotel/widgets/custom_top_navigation.dart';
import 'package:hotel_booking/hotel/widgets/custom_topic.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2C),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 0, right: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTopNavigation(),
            Expanded(
              child: SingleChildScrollView(
                primary: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageDetil(image: 'https://picsum.photos/300/250'),
                    CustomHeaderHotel(
                      title: 'Four Season Resort\nSayan, Bali',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(
                        height: 1,
                        color: Color(0xFF696969),
                      ),
                    ),
                    CustomTitle(
                      title: 'About This Hotel',
                      padding: true,
                    ),
                    CustomAbout(),
                    CustomTitle(
                      title: 'Facility',
                      padding: true,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 15, bottom: 30, left: 30, right: 30),
                      width: double.infinity,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        runSpacing: 10,
                        spacing: 15,
                        children: [
                          CustomTopic(
                            topic: 'Beds',
                          ),
                          CustomTopic(
                            topic: 'Bath',
                          ),
                          CustomTopic(
                            topic: 'Wifi',
                          ),
                          CustomTopic(
                            topic: 'Garden',
                          ),
                          CustomTopic(
                            topic: 'Gym',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
