import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class Redeem extends StatelessWidget {
  const Redeem({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: screenWidth * 0.8,
        height: screenHeight * 0.08,
        child: Wrap(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.04),
              child: Center(
                  child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Convert your ',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.titleMedium,
                        color: Pallete().black,
                      )),
                  TextSpan(
                      text: 'raywards ',
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          color: Pallete().black,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'into ',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.titleMedium,
                        color: Pallete().black,
                      )),
                  TextSpan(
                      text: 'gift card',
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          color: Pallete().black,
                          fontWeight: FontWeight.bold)),
                ]),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: Material(
                clipBehavior: Clip.hardEdge,
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                        color: Pallete().purple,
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                        color: Pallete().black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Redeem Now",
                            style: GoogleFonts.lato(
                              textStyle: TextStyles().headlineText6(context),
                              color: Pallete().white,
                            ),
                          ),
                          RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Pallete().white,
                              ))
                        ],
                      ),
                    ),
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
