import 'package:flutter/material.dart';
import 'package:hotel_booking/hotel/tabs/home_tab.dart';
import 'package:hotel_booking/hotel/widgets/custom_bottom_navigation.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF1F1D2C),
    ));

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF1F1D2C),
        body: TabBarView(
          children: [
            HomeTab(),
            Center(
              child: Icon(
                Icons.explore,
                size: 90,
                color: Color(0xFF78787a),
              ),
            ),
            Center(
              child: Icon(
                Icons.grid_view_rounded,
                size: 90,
                color: Color(0xFF78787a),
              ),
            ),
            Center(
              child: Icon(
                Icons.person_rounded,
                size: 90,
                color: Color(0xFF78787a),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigation(),
      ),
    );
  }
}
