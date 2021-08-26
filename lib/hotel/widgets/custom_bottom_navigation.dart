import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  final double size = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Color(0xFF262837),
      child: TabBar(
        labelColor: Color(0xFFfefefe),
        indicator: BoxDecoration(),
        unselectedLabelColor: Color(0xFF78787a),
        tabs: [
          Tab(
            icon: Icon(
              Icons.home_filled,
              size: this.size,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.explore,
              size: this.size,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.grid_view_rounded,
              size: this.size,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.person_rounded,
              size: this.size,
            ),
          ),
        ],
      ),
    );
  }
}
