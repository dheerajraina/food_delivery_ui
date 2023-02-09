import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
          left: screenHeight * 0.02, right: screenHeight * 0.02, top: screenHeight * 0.05),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            width: screenWidth,
            height: screenHeight * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Pallete().grey,
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "restaurant, grocery, cafe, bar, salon..",
                      hintStyle: GoogleFonts.lato(
                          textStyle: TextStyles().largeText(context), color: Pallete().grey),
                    ),
                  ),
                ),
                RotatedBox(
                    quarterTurns: 3,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.tune,
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
