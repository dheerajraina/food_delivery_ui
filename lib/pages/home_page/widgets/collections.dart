import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class Collections extends StatelessWidget {
  const Collections({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Wrap(
      children: [
        Container(
          height: screenHeight * 0.25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.02,
                      right: screenHeight * 0.02,
                      top: screenHeight * 0.05),
                  child: Material(
                    clipBehavior: Clip.hardEdge,
                    color: Colors.green,
                    elevation: 10,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: screenWidth,
                        height: screenHeight * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: screenHeight * 0.1,
                              color: Pallete().black,
                              child: Row(children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: screenHeight * 0.02, right: screenHeight * 0.02),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "The Gateway",
                                            style: GoogleFonts.lato(
                                                textStyle: TextStyles().headlineText5(context),
                                                color: Pallete().white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            " - ",
                                            style: GoogleFonts.lato(
                                                textStyle: TextStyles().headlineText5(context),
                                                color: Pallete().white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Covent Garden",
                                            style: GoogleFonts.lato(
                                              textStyle: TextStyles().largeText(context),
                                              color: Pallete().white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: screenHeight * 0.02, right: screenHeight * 0.02),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Minimum Spend",
                                            style: GoogleFonts.lato(
                                              textStyle: TextStyles().largeText(context),
                                              color: Pallete().white,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.0),
                                            child: Text(
                                              "INR300",
                                              style: GoogleFonts.lato(
                                                  textStyle: TextStyles().largeText(context),
                                                  color: Pallete().white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: screenHeight * 0.12),
                                            child: Transform.rotate(
                                              angle: 12,
                                              child: Icon(
                                                Icons.send_sharp,
                                                color: Pallete().white,
                                                size: screenHeight * 0.02,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.0),
                                            child: Text(
                                              "0.3 miles",
                                              style: GoogleFonts.lato(
                                                  textStyle: TextStyles().largeText(context),
                                                  color: Pallete().white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                            Stack(
                              children: [
                                Image(
                                  height: screenHeight * 0.1,
                                  width: screenWidth,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://img.etimg.com/thumb/width-1200,height-900,imgsize-829462,resizemode-1,msid-82666514/industry/services/hotels-/-restaurants/staggered-lockdowns-start-to-bite-battered-restaurants.jpg'),
                                ),
                                Positioned(
                                  bottom: 6,
                                  left: 30,
                                  child: Text(
                                    "Top Nearest Restaurants",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyles().headlineText5(context),
                                        color: Pallete().white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                );
              }),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenHeight * 0.02, right: screenHeight * 0.02, top: screenHeight * 0.01),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(screenHeight * 0.1),
            child: Container(
                width: screenWidth,
                height: screenHeight * 0.08,
                child: RotatedBox(quarterTurns: 3, child: Icon(Icons.arrow_back_ios))),
          ),
        )
      ],
    );
  }
}
