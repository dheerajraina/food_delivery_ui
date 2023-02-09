import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:food_delivery_ui/pages/home_page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.08,
      decoration: BoxDecoration(color: Pallete().white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home_outlined,
            color: Pallete().purple,
            size: screenHeight * 0.03,
          ),
          Icon(
            Icons.widgets_outlined,
            color: Pallete().grey,
            size: screenHeight * 0.03,
          ),
          Icon(
            Icons.notifications_active_outlined,
            color: Pallete().grey,
            size: screenHeight * 0.03,
          ),
          Icon(
            Icons.person_outline,
            color: Pallete().grey,
            size: screenHeight * 0.03,
          ),
        ],
      ),
    );
  }
}
