import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class TopOutlets extends StatelessWidget {
  const TopOutlets({super.key});

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenHeight * 0.08,
                height: screenHeight * 0.08,
                decoration:
                    BoxDecoration(color: Pallete().black, borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.location_on_sharp,
                  size: screenHeight * 0.04,
                  color: Pallete().white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Top registered outlets',
                      style: GoogleFonts.lato(
                          textStyle: TextStyles().headlineText6(context),
                          color: Pallete().black,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Earn from offline and online stores',
                          style: GoogleFonts.lato(
                            textStyle: TextStyles().largeText(context),
                            color: Pallete().grey,
                          ),
                        ),
                        SizedBox(width: screenHeight*0.05,),
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
