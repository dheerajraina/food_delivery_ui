import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:food_delivery_ui/config/textstyles.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.05,
        top: screenWidth * 0.02,
      ),
      child: Container(
          height: screenHeight * 0.08,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(screenWidth * 0.1),
                  child: Container(
                    width: screenHeight * 0.08,
                    height: screenHeight * 0.08,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius: screenHeight * 0.05,
                        backgroundColor: Pallete().purple,
                        child: Icon(
                          Icons.location_on_sharp,
                          size: screenHeight * 0.03,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Search nearby registered outlets',
                        style: GoogleFonts.lato(
                            textStyle: TextStyles().largeText(context),
                            color: Pallete().black,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.rotate(
                            angle: 12,
                            child: Icon(
                              Icons.send_sharp,
                              color: Pallete().black,
                              size: screenHeight * 0.02,
                            ),
                          ),
                          Text(
                            'Convent Garden',
                            style: GoogleFonts.lato(
                                textStyle: TextStyles().headlineText6(context),
                                color: Pallete().black,
                                fontWeight: FontWeight.bold),
                          ),
                          RotatedBox(quarterTurns: 3, child: Icon(Icons.arrow_back_ios))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.4,
                    decoration: BoxDecoration(
                      color: Pallete().purple,
                      // border: Border.all(width: 12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(
                        Icons.pentagon_outlined,
                        color: Pallete().white,
                      ),
                      Text(
                        "12 points",
                        style: GoogleFonts.lato(
                            textStyle: TextStyles().headlineText6(context),
                            color: Pallete().white,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
