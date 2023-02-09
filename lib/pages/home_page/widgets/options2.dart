import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class Options2 extends StatelessWidget {
  const Options2({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          customCard(screenHeight, screenWidth, context, 'Grocery Store'),
          customCard(screenHeight, screenWidth, context, 'Grocery Store'),
          customCard(screenHeight, screenWidth, context, 'More')
        ],
      ),
    );
  }

  Widget customCard(screenHeight, screenWidth, BuildContext context, title) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenHeight * 0.02,
        right: screenHeight * 0.02,
        top: screenHeight * 0.05,
      ),
      child: Material(
          clipBehavior: Clip.hardEdge,
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: screenHeight * 0.15,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  title == 'Grocery Store'
                      ? Container(
                          height: screenHeight * 0.2,
                          width: screenHeight * 0.15,
                          color: Pallete().black,
                        )
                      : Row(
                          children: [
                            Container(
                              height: screenHeight * 0.2,
                              width: screenHeight * 0.15,
                              color: Pallete().white,
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.more_horiz,
                                      size: screenHeight * 0.07,
                                    ),
                                    Icon(Icons.more_horiz, size: screenHeight * 0.07),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                  Center(
                    child: Text(
                      title,
                      style: GoogleFonts.lato(
                          textStyle: TextStyles().largeText(context),
                          color: Pallete().black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
