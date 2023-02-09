import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class Options extends StatelessWidget {
  Options({super.key});
  List<String> options = ['Top Brands', 'Food', 'Shopping'];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.12,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: options.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                left: screenHeight * 0.02,
                right: screenHeight * 0.02,
                top: screenHeight * 0.05,
              ),
              child: Material(
                  clipBehavior: Clip.hardEdge,
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: screenHeight * 0.15,
                    ),
                    color: Pallete().white,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Text(
                          options[index],
                          style: GoogleFonts.lato(
                              textStyle: TextStyles().largeText(context),
                              color: Pallete().grey,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  )),
            );
          }),
    );
  }
}
