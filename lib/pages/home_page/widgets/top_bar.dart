import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  TopBar({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(screenWidth * 0.1),
        child: Container(
            width: screenWidth,
            height: screenHeight * 0.1,
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.lato(
                    textStyle: TextStyles().headlineText4(context),
                    color: Pallete().black,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}


/**/
