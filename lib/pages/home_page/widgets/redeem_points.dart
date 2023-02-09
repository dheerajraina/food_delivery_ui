import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class RedeemPoints extends StatelessWidget {
  const RedeemPoints({super.key});

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
          height: screenHeight * 0.09,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenHeight * 0.08,
                height: screenHeight * 0.09,
                decoration:
                    BoxDecoration(color: Pallete().black, borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.show_chart_sharp,
                  size: screenHeight * 0.03,
                  color: Pallete().white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Redeem Points',
                      style: GoogleFonts.lato(
                          textStyle: TextStyles().headlineText5(context),
                          color: Pallete().black,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Convert points and get free gift cards',
                          style: GoogleFonts.lato(
                            textStyle: TextStyles().largeText(context),
                            color: Pallete().grey,
                          ),
                        ),
                        SizedBox(
                          width: screenHeight * 0.05,
                        ),
                        RotatedBox(quarterTurns: 2, child: Icon(Icons.arrow_back))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
